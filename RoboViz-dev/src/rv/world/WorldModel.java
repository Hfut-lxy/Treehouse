/*
 *  Copyright 2011 RoboViz
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package rv.world;

import java.util.ArrayList;
import javax.media.opengl.GL;
import javax.media.opengl.GL2;
import javax.media.opengl.fixedfunc.GLLightingFunc;
import js.jogl.light.DirLight;
import js.jogl.light.LightModel;
import js.math.vector.Matrix;
import js.math.vector.Vec3f;
import rv.Configuration;
import rv.Viewer;
import rv.comm.rcssserver.GameState;
import rv.comm.rcssserver.ISceneGraphItem;
import rv.comm.rcssserver.scenegraph.SceneGraph;
import rv.comm.rcssserver.scenegraph.SceneGraph.SceneGraphListener;
import rv.content.ContentManager;
import rv.ui.UserInterface;
import rv.world.objects.Agent;
import rv.world.objects.Ball;
import rv.world.objects.Field;
import rv.world.objects.SkyBox;

/**
 * Contains, updates, and renders world state data
 * 
 * @author Justin Stoecker
 */
public class WorldModel {

    public interface SelectionChangeListener {
        void selectionChanged(ISelectable newSelection);
    }

    /** Transforms SimSpark coordinates to RoboViz coordinates (and reverse) */
    public static final Matrix                       COORD_TFN    = new Matrix(
            new double[] { -1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1 });

    private final GameState                          gameState    = new GameState();
    private SceneGraph                               sceneGraph   = null;
    private ContentManager                           cm;
    private Configuration                            config;

    private final ArrayList<ISceneGraphItem>         sgItems      = new ArrayList<>();

    private Field                                    field;
    private Ball                                     ball;
    private Team                                     leftTeam;
    private Team                                     rightTeam;
    private LightModel                               lighting;
    private SkyBox                                   skyBox;

    private ISelectable                              selectedObject;

    private final ArrayList<SceneGraphListener>      sgListeners  = new ArrayList<>();
    private final ArrayList<SelectionChangeListener> selListeners = new ArrayList<>();

    public void addSceneGraphListener(SceneGraphListener sgl) {
        sgListeners.add(sgl);
    }

    public void removeSceneGraphListener(SceneGraphListener sgl) {
        sgListeners.remove(sgl);
    }

    public void addSelectionChangeListener(SelectionChangeListener sl) {
        selListeners.add(sl);
    }

    public void removeSelectionChangeListener(SelectionChangeListener sl) {
        selListeners.remove(sl);
    }

    public ISelectable getSelectedObject() {
        return selectedObject;
    }

    public Ball getBall() {
        return ball;
    }

    public void setSelectedObject(ISelectable newSelection) {
        if (newSelection == selectedObject)
            return;

        if (selectedObject != null)
            selectedObject.setSelected(false);

        selectedObject = newSelection;

        if (selectedObject != null)
            selectedObject.setSelected(true);

        for (SelectionChangeListener listener : selListeners)
            listener.selectionChanged(selectedObject);
    }

    public GameState getGameState() {
        return gameState;
    }

    public SceneGraph getSceneGraph() {
        return sceneGraph;
    }

    public void setSceneGraph(SceneGraph sceneGraph) {
        this.sceneGraph = sceneGraph;

        if (sceneGraph != null) {
            for (SceneGraphListener sgl : sgListeners)
                sgl.newSceneGraph(sceneGraph);

            for (ISceneGraphItem sgi : sgItems)
                sgi.sceneGraphChanged(sceneGraph);
        }

        if (selectedObject instanceof Agent) {
            Agent agent = (Agent) selectedObject;
            Agent newSelection;
            if (agent.getTeam().getID() == Team.LEFT) {
                newSelection = getLeftTeam().getAgentByID(agent.getID());
            } else {
                newSelection = getRightTeam().getAgentByID(agent.getID());
            }
            setSelectedObject(newSelection);
        }
    }

    public LightModel getLighting() {
        return lighting;
    }

    public SkyBox getSkyBox() {
        return skyBox;
    }

    public Field getField() {
        return field;
    }

    public ArrayList<ISceneGraphItem> getSceneGraphItems() {
        return sgItems;
    }

    public Team getLeftTeam() {
        return leftTeam;
    }

    public Team getRightTeam() {
        return rightTeam;
    }

    public void init(GL glObj, ContentManager cm, Configuration config, Viewer.Mode mode) {
        this.cm = cm;
        this.config = config;
        GL2 gl = glObj.getGL2();

        field = new Field(cm.getModel("models/newfield.obj"), cm);
        gameState.addListener(field);
        gameState.addListener(cm);

        initTeams();

        ball = new Ball(cm);
        sgItems.add(ball);

        skyBox = new SkyBox(cm.getModel("models/skybox.obj"));

        gl.glEnable(GL.GL_DEPTH_TEST);
        gl.glBlendFunc(GL.GL_SRC_ALPHA, GL.GL_ONE_MINUS_SRC_ALPHA);

        gl.getGL2().glShadeModel(GLLightingFunc.GL_SMOOTH);
        lighting = new LightModel();
        lighting.setGlobalAmbient(0.25f, 0.25f, 0.25f, 1);
        DirLight d1 = new DirLight(new Vec3f(-8, 7, -6).normalize());
        d1.setDiffuse(1, 1, 1, 1);
        lighting.addLight(d1);
    }

    private void initTeams() {
        if (leftTeam != null) {
            gameState.removeListener(leftTeam);
            sgItems.remove(leftTeam);
        }
        if (rightTeam != null) {
            gameState.removeListener(rightTeam);
            sgItems.remove(rightTeam);
        }

        Configuration.TeamColors teamColors = config.teamColors;
        leftTeam = new Team(teamColors.defaultLeftColor, Team.LEFT, cm, teamColors);
        gameState.addListener(leftTeam);
        rightTeam = new Team(teamColors.defaultRightColor, Team.RIGHT, cm, teamColors);
        gameState.addListener(rightTeam);

        sgItems.add(leftTeam);
        sgItems.add(rightTeam);
    }

    public void update(GL gl, double elapsedMS, UserInterface ui) {
        // Allow scene graph items to update their states prior to rendering.
        // This is done in the update loop rather than the scene graph update
        // method because the scene graph might update much more frequently than
        // rendering occurs.
        if (sceneGraph != null) {
            for (ISceneGraphItem sgi : sgItems)
                sgi.update(sceneGraph);
        }

        skyBox.setPosition(ui.getCamera().getPosition());
    }

    public void dispose(GL gl) {
        if (field != null)
            field.dispose(gl);
    }

    public void reset() {
        gameState.reset();
        if (cm != null && config != null)
            initTeams();
        setSceneGraph(null);
    }
}
