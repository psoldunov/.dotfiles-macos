# function destroyEmptySpaces
#   set SPACES (yabai -m query --spaces | jq '. | length')
#   set i $SPACES
#   while test $i -ge 2
#     set WINDOWS (yabai -m query --windows --space $i | jq '. | length')
#     if test $WINDOWS -eq 0
#       yabai -m space $i --destroy
#     end
#     set i (math $i - 1)
#   end
# end

# function createSpace
#   set SPACES $(yabai -m query --spaces | jq '. | length')
  
#   if test $argv -le $SPACES
#     yabai -m space --focus $argv
#   else
#     set SPACEDIFF (math $argv - $SPACES)
#     for i in (seq $SPACEDIFF)
#       yabai -m space --create
#     end
#     yabai -m space --focus $argv
#   end
# end

# function sendToSpace
#   set SPACES $(yabai -m query --spaces | jq '. | length')

#   if test $argv -le $SPACES
#     yabai -m window --space $argv
#   else
#     set SPACEDIFF (math $argv - $SPACES)
#     for i in (seq $SPACEDIFF)
#       yabai -m space --create
#     end
#     yabai -m window --space $argv
#   end
# end

# function yabaiNotification
#   terminal-notifier -title "Yabai" -subtitle "$argv[1]" -message "$argv[2]" -group "yabai" -ignoreDnD -sender com.apple.Dock -sound "Blow.aiff"
# end


# function insertModeDisable
#   yabai -m window --insert east
#   yabai -m window --insert east
# end

# function startWorkMode
#   createSpace 3
#   open -n -a "Brave Browser" --args --new-window "https://webflow.com/dashboard?workspace=boundary"
#   open -n -a "Figma"
# end

# function boundaryCommsDesktop 
#   createSpace 4
#   open -n -a "Brave Browser" --args --new-window "https://meet.google.com/landing?authuser=philipp@boundaryla.com"
#   open -a "Slack"
#   open -a "Asana"
#   open -a "Mail"
# end

# function restartWindowManager
#   yabai --restart-service
#   skhd --restart-service
#   osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'
# end