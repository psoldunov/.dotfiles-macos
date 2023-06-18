#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Kitty
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🖥️
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description Opens new Kitty window
# @raycast.author Philipp Soldunov
# @raycast.authorURL github.com/psoldunov

fish -c "kitty --single-instance -d ~"

