#!/bin/bash

# Launch ncspot
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ncspot
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon 🎵
# @raycast.packageName System Utilities
#
# Documentation:
# @raycast.description Launches ncspot in a new terminal window using the kitty terminal emulator.
# @raycast.author Philipp Soldunov
# @raycast.authorURL github.com/psoldunov

fish -c 'kitty --single-instance fish -c "ncspot"'