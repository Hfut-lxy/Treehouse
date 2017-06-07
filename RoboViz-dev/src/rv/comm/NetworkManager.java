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

package rv.comm;

import java.net.SocketException;
import rv.Configuration;
import rv.Viewer;
import rv.comm.drawing.DrawComm;
import rv.comm.rcssserver.ServerComm;

/**
 * Central hub for handling network communication
 * 
 * @author Justin Stoecker
 */
public class NetworkManager {

    private DrawComm   agentComm = null;
    private ServerComm serverComm;

    public DrawComm getAgentComm() {
        return agentComm;
    }

    public ServerComm getServer() {
        return serverComm;
    }

    public void init(Viewer viewer, Configuration config) {
        try {
            agentComm = new DrawComm(viewer, config.networking.listenPort);
        } catch (SocketException e) {
            e.printStackTrace();
        }
        serverComm = new ServerComm(viewer.getWorldModel(), config, viewer.getMode());
        if (agentComm != null) {
            agentComm.addListener(serverComm);
        }
    }

    public void shutdown() {
        if (agentComm != null) {
            agentComm.shutdown();
            agentComm.removeListener(serverComm);
        }
        serverComm.disconnect();
    }
}