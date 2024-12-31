OUTDir_TMP=".tmp-ALCPlugFix-Swift-Y9000X-Sukka"

# Get hold of actual directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
pledit=/usr/libexec/PlistBuddy

# Colors
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
gray=$(tput setaf 8)
reset=$(tput sgr0)
bold=$(tput bold)

###### Logger Util
function logger_info {
  echo "${gray}[$(date '+%Y-%m-%d %H:%M:%S')]${reset} ${green}INFO${reset} $1"
}
function logger_warn {
  echo "${gray}[$(date '+%Y-%m-%d %H:%M:%S')]${reset} ${yellow}WARN${reset} $1"
}
function logger_error {
  echo "${gray}[$(date '+%Y-%m-%d %H:%M:%S')]${reset} ${red}ERROR${reset} $1"
}

# Exit on Network Issue
function networkErr() {
  logger_error "Failed to download resources from ${magenta}${1}${reset}, please check your connection!"
  exit 1
}

# Exit on Copy Issue
function copyErr() {
  logger_error "Failed to copy resources!"
  exit 1
}

# Function that exits with an error code and message
function abort() {
    logger_error $1
    exit 1
}

if [[ ${OSTYPE} != darwin* ]]; then
  logger_error "This script can only run in macOS, aborting"
  exit 1
fi

if [[ -d ${OUTDir_TMP} ]]; then
  rm -rf "${OUTDir_TMP}"
fi
mkdir "${OUTDir_TMP}" || exit 1

curl -L -o ${OUTDir_TMP}/ALCPlugFix.zip https://github.com/black-dragon74/ALCPlugFix-Swift/releases/download/1.5/ALCPlugFix-Swift-RELEASE-1.5.zip

logger_info "Unpacking files"
eval "$(cd ${OUTDir_TMP} && unzip -qq "*.zip" || exit 1)"

logger_info "Uninstall previous installation if any"
logger_info "You might be prompted to enter your password since it will unload existing LaunchAgents and LaunchDaemons"

# Remove codec commander based ALCPlugFix
sudo launchctl unload /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo rm -rf /Library/LaunchAgents/good.win.ALCPlugFix.plist
# Remove any existing alc-verb install
sudo launchctl unload /Library/LaunchAgents/com.black-dragon74.ALCPlugFix.plist
sudo rm -rf /Library/LaunchAgents/com.black-dragon74.ALCPlugFix.plist
# Remove previous LaunchDaemons
sudo launchctl unload /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
sudo rm -rf /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
# Cleanup old folders
sudo rm -rf /Library/Preferences/ALCPlugFix
sudo rm -rf "$HOME/.config/ALCPlugFix-Swift-Y9000X-Sukka"

logger_info "Copying ALCPlugFix binary"
logger_info "You might be prompted to enter your password during the installation since the file will be installed under your /Library/LaunchAgents directory"

if [[ ! -d /usr/local/bin ]]; then
  sudo mkdir -p /usr/local/bin
fi

sudo cp "$OUTDir_TMP/ALCPlugFix-Swift" /usr/local/bin/ALCPlugFix || copyErr
sudo chmod 755 /usr/local/bin/ALCPlugFix
sudo chown root:wheel /usr/local/bin/ALCPlugFix

if [[ ! -d /Library/Preferences/ALCPlugFix ]]; then
  sudo mkdir -p /Library/Preferences/ALCPlugFix
fi

cat <<'EOF' >"${OUTDir_TMP}/com.black-dragon74.ALCPlugFix.plist"
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>KeepAlive</key>
    <true/>
    <key>Label</key>
    <string>com.black-dragon74.ALCPlugFix</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/local/bin/ALCPlugFix</string>
        <string>/Library/Preferences/ALCPlugFix/ALCPlugFixConfigY9000XSukka.plist</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>ServiceIPC</key>
    <false/>
</dict>
</plist>
EOF

cat <<'EOF' >"${OUTDir_TMP}/ALCPlugFixConfigY9000XSukka.plist"
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <array>
    <dict>
      <key>Comment</key>
      <string>0x20 0x500 0x24</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x24</string>
      <key>Verb</key>
      <string>0x500</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x41</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x41</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x500 0x26</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x26</string>
      <key>Verb</key>
      <string>0x500</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x2</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x2</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x0</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x0</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x0</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x0</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x4b0 0x20</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x20</string>
      <key>Verb</key>
      <string>0x4b0</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x500 0x24</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x24</string>
      <key>Verb</key>
      <string>0x500</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x42</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x42</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x500 0x26</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x26</string>
      <key>Verb</key>
      <string>0x500</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x2</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x2</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x0</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x0</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x400 0x0</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x0</string>
      <key>Verb</key>
      <string>0x400</string>
    </dict>
    <dict>
      <key>Comment</key>
      <string>0x20 0x4b0 0x20</string>
      <key>Enabled</key>
      <true />
      <key>Node ID</key>
      <string>0x20</string>
      <key>On Boot</key>
      <true />
      <key>On Connect</key>
      <false />
      <key>On Disconnect</key>
      <true />
      <key>On Mute</key>
      <false />
      <key>On Sleep</key>
      <false />
      <key>On Unmute</key>
      <true />
      <key>On Wake</key>
      <true />
      <key>Param</key>
      <string>0x20</string>
      <key>Verb</key>
      <string>0x4b0</string>
    </dict>
  </array>
</plist>
EOF

sudo cp "${OUTDir_TMP}/ALCPlugFixConfigY9000XSukka.plist" /Library/Preferences/ALCPlugFix
sudo chmod 644 /Library/Preferences/ALCPlugFix/ALCPlugFixConfigY9000XSukka.plist
sudo chown root:wheel /Library/Preferences/ALCPlugFix/ALCPlugFixConfigY9000XSukka.plist

sudo cp "${OUTDir_TMP}/com.black-dragon74.ALCPlugFix.plist" /Library/LaunchDaemons
sudo chmod 644 /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
sudo chown root:wheel /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
sudo launchctl load /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist

logger_info "ALCPlugFix installation finished!"
