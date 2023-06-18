test -e /etc/os-release && set _distro $(awk '/^ID=/' /etc/os-release | awk -F'=' '{ print tolower($2) }')

test -e /System/Library/CoreServices/SystemVersion.plist && set _distro "macos"

# on mac os use the systemprofiler to determine the current model
set MAC $(system_profiler SPHardwareDataType | awk '/Model Name/ {print $3,$4,$5,$6,$7}')

switch $MAC
    case '*MacBook*'
        set DEVICE ""
    case '*mini*'
        set DEVICE "󰇄"
    case '*Studio*'
        set DEVICE "󰇄"
    case '*'
        set DEVICE "󰪫"
end

# set an icon based on the distro

switch $_distro
    case '*kali*'
        set ICON "ﴣ"
    case '*arch*'
        set ICON ""
    case '*debian*'
        set ICON ""
    case '*raspbian*'
        set ICON ""
    case '*ubuntu*'
        set ICON ""
    case '*elementary*'
        set ICON ""
    case '*fedora*'
        set ICON ""
    case '*coreos*'
        set ICON ""
    case '*gentoo*'
        set ICON ""
    case '*mageia*'
        set ICON ""
    case '*centos*'
        set ICON ""
    case '*opensuse*'
        set ICON ""
    case '*sabayon*'
        set ICON ""
    case '*slackware*'
        set ICON ""
    case '*linuxmint*'
        set ICON ""
    case '*alpine*'
        set ICON ""
    case '*aosc*'
        set ICON ""
    case '*nixos*'
        set ICON ""
    case '*devuan*'
        set ICON ""
    case '*manjaro*'
        set ICON ""
    case '*rhel*'
        set ICON ""
    case '*macos*'
        set ICON ""
    case '*'
        set ICON ""
end

export STARSHIP_DISTRO="$ICON"
export STARSHIP_DEVICE="$DEVICE"