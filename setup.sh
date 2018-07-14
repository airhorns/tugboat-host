#!/usr/bin/env bash
set -ex
defaults write org.macosforge.xquartz.X11 app_to_run '' # suppress xterm terminal
defaults write org.macosforge.xquartz.X11 enable_iglx -bool true
open -a XQuartz
/opt/X11/bin/xhost +$(ipconfig getifaddr en0)

brew tap osrf/simulation
brew install gazebo9
