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

package rv.world.rendering;

import java.util.ArrayList;
import java.util.List;
import javax.media.opengl.GL;
import javax.media.opengl.GL2;
import js.math.vector.Matrix;
import rv.Configuration;
import rv.Renderer;
import rv.comm.drawing.Drawings;
import rv.comm.rcssserver.scenegraph.StaticMeshNode;
import rv.content.ContentManager;
import rv.content.Model;
import rv.world.WorldModel;

/**
 * Renders world model scene using fixed-function Gouraud shading
 * 
 * @author justin
 */
public class BasicSceneRenderer implements SceneRenderer {

    private ContentManager     content;
    private final List<String> suppressedMeshes = new ArrayList<>();

    @Override
    public boolean init(GL2 gl2, Configuration.Graphics conf, ContentManager cm) {
        this.content = cm;

        suppressedMeshes.add("field.obj");
        suppressedMeshes.add("skybox.obj");

        return true;
    }

    public static void applyAgentMats(Model model, StaticMeshNode node, ContentManager content) {
        // NOTE: this is a hack to get the player meshes to render with the
        // correct
        // team colors. The materials should be explicitly listed by the scene
        // graph,
        // but the material being replaced (matTeam) is not mentioned anywhere
        // in the
        // scene graph.
        boolean isAgent = false;
        if (node.containsMaterial("matLeft")) {
            model.replaceMaterial("matTeam", content.getMaterial("matLeft"));
            isAgent = true;
        } else if (node.containsMaterial("matRight")) {
            model.replaceMaterial("matTeam", content.getMaterial("matRight"));
            isAgent = true;
        }
        if (isAgent) {
            for (String matName : node.getMaterials()) {
                if (matName.startsWith("matNum")) {
                    model.replaceMaterial("matNum", content.getMaterial(matName));
                    break;
                }
            }
        }
    }

    private void renderSceneGraphNode(GL2 gl, StaticMeshNode node, ContentManager content) {
        Model model = content.getModel(node.getName());
        if (model.isLoaded()) {

            // NOTE: this is a hack to avoid rendering certain meshes that are
            // replaced by
            // RoboViz; in particular, the field and skybox are treated
            // differently
            for (String s : suppressedMeshes)
                if (node.getName().endsWith(s))
                    return;

            applyAgentMats(model, node, content);

            Matrix modelMat = WorldModel.COORD_TFN.times(node.getWorldTransform());
            model.getMesh().render(gl, modelMat);
        }
    }

    public void render(GL2 gl, WorldModel world, Drawings drawings) {
        if (world.getSceneGraph() == null)
            return;

        gl.glDisable(GL2.GL_LIGHTING);
        gl.glEnable(GL.GL_TEXTURE_2D);
        gl.glColor3f(1, 1, 1);
        world.getSkyBox().render(gl);

        gl.glEnable(GL.GL_DEPTH_TEST);
        gl.glEnable(GL2.GL_LIGHTING);
        gl.glEnable(GL2.GL_NORMALIZE);
        world.getLighting().apply(gl);

        gl.glDepthMask(false);
        world.getField().render(gl);
        gl.glDepthMask(true);

        List<StaticMeshNode> transparentNodes = new ArrayList<>();
        List<StaticMeshNode> nodes = world.getSceneGraph().getAllMeshNodes();
        for (StaticMeshNode node : nodes) {
            if (node.isTransparent())
                transparentNodes.add(node);
            else
                renderSceneGraphNode(gl, node, content);
        }

        gl.glEnable(GL.GL_BLEND);
        if (world.getSelectedObject() != null)
            world.getSelectedObject().renderSelected(gl);
        if (drawings.isVisible())
            drawings.render(gl, Renderer.glut);

        // transparent stuff

        for (StaticMeshNode transparentNode : transparentNodes)
            renderSceneGraphNode(gl, transparentNode, content);
        gl.glDisable(GL.GL_BLEND);

        gl.glDisable(GL2.GL_LIGHTING);
        gl.glDisable(GL.GL_TEXTURE_2D);
    }

    @Override
    public void dispose(GL gl) {
    }

    @Override
    public String toString() {
        return "Basic Scene Renderer";
    }
}
