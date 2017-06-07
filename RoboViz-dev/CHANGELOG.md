1.3.0
------------------------------
* server speed and foul overlay are now visible by default
* the ball is now selected by default when connecting
* completely reworked the ball tracking camera
* FSAA is now enabled by default
* increased the default window size to 1024x768
* increased the default size of the help panel to 600x800
* the default visibility of overlays is now configurable in `config.txt`
* the foul overlay is now slightly bigger
* changed the color format in `config.txt` to 0xRRGGBB
* the default colors of the left and right team are now configurable

1.2.0
------------------------------
* fixed the log player getting stuck with draw commands occasionally (#78)
* fixed `--logFile` paths starting with `~` in `roboviz.sh` (#80)
* fixed the server host displayed in the window title when overriden with `--serverHost` (#83)
* changed the connection overlay text from `Trying to connect to <ip>...` to `Waiting for second half...` if time is at 300
* changed the connection overlay text to dynamically resize with the window
* changed the the "reset time" shortcut (`Shift+R`) to `Shift+T` (#85)
* added an overlay to display fouls (can be toggled with `Q`) (#82)
* added `Shift+L` and `Shift+R` shortcuts to switch to the `direct_free_kick_left` / `right` play modes added in [[r405]](https://sourceforge.net/p/simspark/svn/405/) (#85)
* added support for using `~/.roboviz/config.txt` instead of the local `config.txt` if present
* added the RoboViz version to the window title

1.1.2
------------------------------
* fixed drawing of annotations in different robot vantages
* fixed incorrect shadow rendering near field corners
* adjusted .sh start scripts so they can run from any directory
* added current server IP / logfile path to window title

1.1.1
------------------------------

* fixed third person robot vantage not working with new robot models
* fixed the first frame of logfiles not being parsed
* draw commands are now recorded with "Record Logfiles" and replayable in log mode
* changed the drawings panel shortcut to `Y`
* improved the enabled status handling of some log player buttons
* fixed the log player not pausing when reaching the start of the file with negative playback speed
* fixed camera position shortcuts (`1`-`8`) not always working right away in log mode
* fixed draw commands including agent IDs to use to use the agent's uniform number instead of the index in the current team array
* fixed agent annotations being discarded after scene graph changes

1.1.0
------------------------------

*Note: Java 7 is required to compile RoboViz now, whereas the version on the SourceForge repository works with Java 6.*

* Unified Log Mode and Live Mode - Log Mode now has the same features and shortcuts as Live Mode, except for a few necessary restrictions (server commands and drawings)
* **Log Player:**
	* fixed another Logplayer window being created when dragging RoboViz to a different monitor on Linux
	* added a separate thread for log playback to prevent the UI from freezing when jumping a lot of frames (especially noticable with the slider)
	* added a "Jump to previous / next" goal feature (a separate thread analyzes the logfile in the background to find goals, so the functionality is not available right away)
	* playback speed is now determined by a factor instead of FPS
	* negative playback speeds are now allowed
	* replace the decrease / increase playback speed buttons with a spinner
	* fixed playback being slightly too fast (150ms per frame instead of 200ms)
	* the "ms per frame"-value is now extracted from the logfile, making it so that the playback speed is independant of the `$monitorLoggerStep` value of the server config while recording it
	* removed the progress slider from the RoboViz main window
	* fixed score / team colors / names etc. not being reset properly when switching logfiles
* **Shortcuts:**
	* added a `F1` shortcut that displays a help page with a list of all shortcuts
	* changed the ball selection shortcut from `Ctrl+0` to just `0`
	* fixed `Numpad 0` not working with the ball selection shortcut
	* removed the `Q` shortcut to prevent accidentally closing RoboViz
	* added an `Escape` shortcut to close dialogs and to cancel the current selection
	* added `Ctrl+[F1-F11]` shortcuts to select players from the left team
	* added `Ctrl+Shift+[F1-F11]` shortcuts to select players from the right team
	* added a `Tab` shortcut to select the next player in the current team
	* added a `Shift+Tab` shortcut to select the previous player in the current team
	* added a `Ctrl+Alt+Click` shortcut to move the ball to a position with a velocity
	* added a `Shift+Alt+Click` shortcut to launch the ball to a position at a 45 degree angle
	* added an `E` shortcut to toggle third person perspective
	* added `W / Up / Mouse wheel up` shortcuts to decrease the FOV in Robot Vantage mode
	* added `S / Down / Mouse wheel down` shortcuts to increase the FOV in Robot Vantage mode
	* it's now possible to hold `Shift` more more precise camera movement
	* added a `Shift+R` shortcut to reset the server time (needs [[r386]](http://sourceforge.net/p/simspark/svn/386/))
	* all shortcuts that change playmodes now reset the server time if necessary (time >= 600)
	* added a `U` shortcut to request a full state update from the server (for when RoboViz gets out of sync, like missing agents)
	* changed the `Z` (increase playback speed) and `X` (decrease playback speed) shortcuts to `X` and `C` (more convenient on QWERTZ keyboards)
	* added a `G` shortcut to jump to the previous goal (log mode)
	* added a `H` shortcut to jump to the next goal (log mode)
	* changed the cycle annotations shortcut (`I`) to only toggle between "none" and "player numbers" if there aren't any custom agent annotations
	* added a `M` shortcut toggling the display of the estimated server speed (in percent, relative to real time) in live mode
* **Playmode Overlay:**
	* allow cycling through playmodes (pressing up while the first playmode is selected selects the last playmode and vice-versa)
	* allow filtering playmodes by a string
* **Field 2D Overlay:**
	* made the field transparent and thus less obstructive
	* slightly decreased the size of the ball
	* the overlay is now rendered under the connection overlay
* **Command-line arguments:**
	* instead of simply passing a log file path as the first argument to the start scripts, it now has to be in the from of `--logFile=path`
	* fixed file paths starting with `~` not working on Linux
	* output a more helpful error message for invalid logfile paths (includes the path now)
	* output a more helpful error message when the logfile path is a directory
	* added a `--logMode` argument that enables Log Mode even without specifying a `--logFile`
	* added a `--serverHost=` argument that allows overriding the server host specified in the config
	* added a `--serverPort=` argument that allows overriding the server port specified in the config
	* added a `--drawingFilter=` argument that allows specifying the filter for the drawings panel
* **Configuration Window:**
	* added a UI for settings that could only be changed in the `config.txt` file before:
		* Record Logfiles
		* VSync
		* Team Colors
	* added several new settings:
		* Frame State (X, Y, Center Position, Maximized)
		* Save Frame State - enabled by default, automatically saves and restores the main window's position, dimensions and state
		* First Person FOV
		* Third Person FOV
		* Logfile Directory (the directory the "Open Logfile" dialog is opened at)
	* now uses the same look and feel as the other windows
	* made "Start RoboViz" the default button (allows to use `Enter` as a shortcut)
	* made sure OS-specific line endings are used when saving the config (previously `LF` was used even on Windows)
* **Bugfixes:**
	* fixed taking screenshots and recording logfiles on Windows
	* fixed the `config.bat` not working
	* fixed the ball's velocity not being reset to `(0 0 0)` when it's beamed
	* fixed `ConcurrentModificationException`s
	* fixed the main window not using the RoboViz icon on Linux
	* fixed RoboViz thinking that modifier keys are still pressed if they are pressed while the application loses focus and are then released 
* **Other changes and improvements:**
	* screenshots are now saved in a `screenshots/` subdirectory
	* logfiles are now saved in a `logfiles/` subdirectory
	* more helpful "disconnected" overlay in live mode (displays server IP and port)
	* major improvements to the behavior of windows with multi-monitor setups (among other things, dialogs are now displayed relative the the main window as opposed to always being on the primiary monitor)
	* added a "select player" command to the drawing API: `| 3 | 0 | Agent/Team |`
	* the swap buffers command now prints an error when the second byte does not equal 0 instead of ignoring it, making the behavior consistent with the rest of the drawing API
	* added a black outline for the player numbers texts
	* moved `config.txt` out of `resources/` into the root directory for easier access
	* moved build scripts to the `scripts/` subdirectory
	* removed the separate start scripts for Log Mode
	* added a more helpful error message for the drawing API failing to parse float values
	* made sure the GameState Overlay is still rendered after losing the server connection to be able to see the current score
	* added the new rcssserver3d robot body type models (needs [[r395]](http://sourceforge.net/p/simspark/svn/395/))
