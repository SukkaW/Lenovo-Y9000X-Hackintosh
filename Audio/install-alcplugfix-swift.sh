OUTDir_TMP="tmp"
InstallTargetDir="$HOME/.config/ALCPlugFix-Swift-Y9000X-Sukka"

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

function init() {
  if [[ ${OSTYPE} != darwin* ]]; then
    logger_error "This script can only run in macOS, aborting"
    exit 1
  fi

  if [[ -d ${OUTDir_TMP} ]]; then
    rm -rf "${OUTDir_TMP}"
  fi
  mkdir "${OUTDir_TMP}" || exit 1
}

# Function that exits with an error code and message
function abort() {
    logger_error $1
    exit 1
}

# Download GitHub Release
function dGR() {
  local rawURL
  local url

  if [[ -n ${3+x} ]]; then
    if [[ "$2" == "PreRelease" ]]; then
      tag=""
    elif [[ "$2" == "NULL" ]]; then
      tag="/latest"
    else
      # only release_id is supported
      tag="/$2"
    fi
  else
    tag="/latest"
  fi

  if [[ -n ${GITHUB_ACTIONS+x} || ${gh_api} == false ]]; then
    rawURL="https://github.com/$1/releases$tag"

    url=( "https://github.com$(curl -L --silent "${rawURL}" | grep '/download/' | grep -m 1 RELEASE | sed 's/^[^"]*"\([^"]*\)".*/\1/')" )
  else
    rawURL="https://api.github.com/repos/$1/releases$tag"
    url=( "$(curl --silent "${rawURL}" | grep 'browser_download_url' | grep -m 1 RELEASE | tr -d '"' | tr -d ' ' | sed -e 's/browser_download_url://')" )
  fi

    if [[ -z ${url} || ${url} == "https://github.com" ]]; then
      networkErr "$1"
    fi

    logger_info "Downloading ${magenta}${url##*\/}${reset}"

    cd ./"$3" || exit 1
    curl -# -L -O "${url}" || networkErr "$1"
    cd - > /dev/null 2>&1 || exit 1
}

# Unpack
function unpack() {
  logger_info "Unpacking files"
  eval "$(cd ${OUTDir_TMP} && unzip -qq "*.zip" || exit 1)"
}

function copy() {
  logger_info "Creating directory ~/.config/ALCPlugFix-Swift-Y9000X-Sukka"
  mkdir -p $InstallTargetDir
  logger_info "Copying configuration files to your Home folders"
  cp -R "Audio/ALCPlugFixConfigY9000XSukka.plist" $InstallTargetDir || copyErr
}

function cleanUpOldInstall() {
    logger_info "Uninstall previous installation if any"
    logger_info "You might be prompted to enter your password since it will unload existing LaunchAgents and LaunchDaemons"

    # Remove codec commander based ALCPlugFix
    sudo launchctl unload /Library/LaunchAgents/good.win.ALCPlugFix.plist
    sudo rm -rf /Library/LaunchAgents/good.win.ALCPlugFix.plist

    # Remove any existing alc-verb install
    sudo launchctl unload /Library/LaunchAgents/com.black-dragon74.ALCPlugFix.plist
    sudo rm -rf /Library/LaunchAgents/com.black-dragon74.ALCPlugFix.plist

    sudo launchctl unload /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
    sudo rm -rf /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
}

function install() {
  logger_info "Creating ALCPlugFix launchd file"
  $pledit -c "Set ProgramArguments:1 ${InstallTargetDir}/ALCPlugFixConfigY9000XSukka.plist" ${OUTDir_TMP}/com.black-dragon74.ALCPlugFix.plist || abort "Failed to write to launchd file"

  logger_info "Copying ALCPlugFix binary and launchd files"
  logger_info "You might be prompted to enter your password during the installation since the file will be installed under your /Library/LaunchDaemons directory"
  sudo cp "$OUTDir_TMP/ALCPlugFix-Swift" /usr/local/bin/ALCPlugFix || copyErr
  sudo cp "$OUTDir_TMP/com.black-dragon74.ALCPlugFix.plist" /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist || copyErr

  logger_info "Setting correct file permission"
  sudo chmod 755 /usr/local/bin/ALCPlugFix
  sudo chmod 644 /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
  sudo chown root:wheel /usr/local/bin/ALCPlugFix
  sudo chown root:wheel /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist

  logger_info "Start ALCPlugFix at login"
  sudo launchctl load /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist

  logger_info "ALCPlugFix installation finished!"
}

init
dGR "black-dragon74/ALCPlugFix-Swift" NULL ${OUTDir_TMP}
unpack
copy
cleanUpOldInstall
install
