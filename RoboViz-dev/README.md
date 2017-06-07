![Logo](resources/images/icon.png) RoboViz
==================

RoboViz is a monitor and visualization tool for the [RoboCup 3D Soccer Simulation League](http://wiki.robocup.org/wiki/Soccer_Simulation_League). This is a fork of the original version by Justin Stoecker [hosted on SourceForge](http://sourceforge.net/projects/rcroboviz/). It has a number of improvements, bugfixes and new features listed in the [changelog](CHANGELOG.md).

Java 1.7 is required to run RoboViz. Pre-built binaries for Linux and Mac are available [here](https://github.com/magmaOffenburg/RoboViz/releases). You can also build it from source using the appropriate `build-<platform>` script in [`scripts`](scripts).

![Screenshot](https://cloud.githubusercontent.com/assets/2620907/8145056/b4d53310-11f8-11e5-8732-477bd7a3d185.png)

Except for the available shortcuts, the information on the [original website](https://sites.google.com/site/umroboviz) is still largely accurate. A complete list of shortcuts is available via a help window opened with the `F1` hotkey. Alternatively, it's also available as a `.html` file in `resources/help/controls.html`.

## Command line arguments

| Argument           | Description                                                               |
|--------------------|---------------------------------------------------------------------------|
| `--logMode`        | Start RoboViz in log instead of live mode.                                |
| `--logFile=`       | Opens the log file at the specified path right away. Implies `--logMode`. |
| `--serverHost=`    | Overrides the server host specified in `config.txt`.                      |
| `--serverPort=`    | Overrides the server port specified in `config.txt`.                      |
| `--drawingFilter=` | The initial filter used in the drawings panel - default is `.*`.          |

## Contributing

Contributions of any form are welcome. That includes:
- Bug reports and feature suggestions by [opening an issue](https://github.com/magmaOffenburg/RoboViz/issues/new).
- Code contributions by creating a [pull request](https://github.com/magmaOffenburg/RoboViz/pulls?q=is%3Aopen+is%3Apr).

Some basic contribution guidelines can be found [here](CONTRIBUTING.md).

[![Build Status](https://travis-ci.org/magmaOffenburg/RoboViz.png)](https://travis-ci.org/magmaOffenburg/RoboViz)
