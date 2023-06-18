#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Empty Downloads Folder
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ???
# @raycast.packageName System Utilities
# @raycast.needsConfirmation true

# Documentation:
# @raycast.description Empties the Downloads folder
# @raycast.author Philipp Soldunov
# @raycast.authorURL github.com/psoldunov

tell application "Finder"
	set allDownloads to every item of folder (path to downloads folder as text)
	delete allDownloads
	display notification with title "Empty Downloads folder" subtitle "Your Downloads folder is now empty." sound name "Glass"
end tell