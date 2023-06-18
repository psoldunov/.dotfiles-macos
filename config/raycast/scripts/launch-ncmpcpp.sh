#!/bin/bash

# Launch ncmpcpp
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ncmpcpp
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon 🎹
# @raycast.packageName System Utilities
#
# Documentation:
# @raycast.description Launches ncmpcpp in a new terminal window using the kitty terminal emulator.
# @raycast.author Philipp Soldunov
# @raycast.authorURL github.com/psoldunov

fish -c "kitty --single-instance ncmpcpp"