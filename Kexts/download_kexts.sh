#!/bin/bash
#set -x # for DEBUGGING

# Created by Sukka on 2020-03-03
#
# Reference:
# https://github.com/daliansky/XiaoMi-Pro-Hackintosh/blob/87978828d0fcd0f0fe71411aac4ee7a09bc06da8/Kexts/download_kexts.sh
# https://github.com/williambj1/Hackintosh-EFI-Asus-Zephyrus-S-GX531/blob/master/Makefile.sh by @williambj1

# Vars

GH_KEXTS=(
    "VoodooI2C/VoodooI2C"
    "cholonam/Sinetek-rtsx"
    "acidanthera/VirtualSMC"
    "acidanthera/AirportBrcmFixup"
    "acidanthera/BrcmPatchRAM"
    "acidanthera/WhateverGreen"
    "acidanthera/AppleALC"
    "acidanthera/HibernationFixup"
    "acidanthera/RestrictEvents"
    "acidanthera/VoodooPS2"
    "acidanthera/Lilu"
    "acidanthera/BrightnessKeys"
    "acidanthera/NVMeFix"
    "al3xtjames/NoTouchID"
)

KEXT_ITEMS=(
    "AirportBrcmFixup.kext"
    "AppleALC.kext"
    "HibernationFixup.kext"
    "Lilu.kext"
    "VoodooI2C.kext"
    "VoodooI2CHID.kext"
    "VoodooPS2Controller.kext"
    "WhateverGreen.kext"
    "RestrictEvents.kext"
    "NoTouchID.kext"
    "Kexts/SMCBatteryManager.kext"
    "Kexts/SMCLightSensor.kext"
    "Kexts/SMCProcessor.kext"
    "Kexts/SMCSuperIO.kext"
    "Kexts/VirtualSMC.kext"
    "BrcmBluetoothInjector.kext"
    "BrcmFirmwareData.kext"
    "BrcmPatchRAM3.kext"
    "BrightnessKeys.kext"
    "Release/Sinetek-rtsx.kext"
    "NVMeFix.kext"
)

RETRY_MAX=5

gh_api=false

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

# WorkSpaceDir
OUTDir="Download"
OUTDir_TMP="tmp"
WSDir="$( cd "$(dirname "$0")" || exit 1; pwd -P )/${OUTDir}"

# Exit on Network Issue
function networkErr() {
  logger_error "Failed to download resources from ${magenta}${1}${reset}, please check your connection!"
  exit 1
}

# Exit on Copy Issue
function copyErr() {
  logger_error "Failed to copy resources!"
  cd ../../ || exit 1
  rm -rf "${OUTDir}"
  exit 1
}

function init() {
  if [[ ${OSTYPE} != darwin* ]]; then
    logger_error "This script can only run in macOS, aborting"
    exit 1
  fi

  if [[ -d ${WSDir} ]]; then
    rm -rf "${WSDir}"
  fi
  mkdir "${WSDir}" || exit 1
  cd "${WSDir}" || exit 1

  if [[ -d ${OUTDir_TMP} ]]; then
    rm -rf "${OUTDir_TMP}"
  fi
  mkdir "${OUTDir_TMP}" || exit 1

  logger_info "Start downloading Kexts"
}

# Workaround for Release Binaries that don't include "RELEASE" in their file names (head or grep)
function h_or_g() {
  if [[ "$1" == "VoodooI2C/VoodooI2C" ]]; then
    hgs=( "head -n 1" )
  elif [[ "$1" == "cholonam/Sinetek-rtsx" ]]; then
    hgs=( "grep -m 1 Sinetek-rtsx-" )
  #elif [[ "$1" == "itlwm" ]]; then
  #  hgs=( "grep -m 1 AirportItlwm-Big_Sur"
  #        "grep -m 1 AirportItlwm-Catalina"
  #        "grep -m 1 AirportItlwm-High_Sierra"
  #        "grep -m 1 AirportItlwm-Mojave"
  #      )
  else
    hgs=( "grep -m 1 RELEASE" )
  fi
}

# Download GitHub Release
function dGR() {
  local rawURL
  local urls=()

  h_or_g "$1"

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

    for hg in "${hgs[@]}"; do
      urls+=( "https://github.com$(curl -L --silent "${rawURL}" | grep '/download/' | eval "${hg}" | sed 's/^[^"]*"\([^"]*\)".*/\1/')" )
    done
  else
    rawURL="https://api.github.com/repos/$1/releases$tag"
    for hg in "${hgs[@]}"; do
      urls+=( "$(curl --silent "${rawURL}" | grep 'browser_download_url' | eval "${hg}" | tr -d '"' | tr -d ' ' | sed -e 's/browser_download_url://')" )
    done
  fi

  for url in "${urls[@]}"; do
    if [[ -z ${url} || ${url} == "https://github.com" ]]; then
      networkErr "$1"
    fi

    logger_info "Downloading ${magenta}${url##*\/}${reset}"

    cd ./"$3" || exit 1
    curl -# -L -O "${url}" || networkErr "$1"
    cd - > /dev/null 2>&1 || exit 1
  done
}

function download() {
  for kext in "${GH_KEXTS[@]}"; do
    dGR "${kext}" NULL "${OUTDir_TMP}"
  done
}

# Unpack
function unpack() {
  logger_info "Unpacking files"
  eval "$(cd ${OUTDir_TMP} && unzip -qq "*.zip" || exit 1)"
}

# Install
function install() {
  for kextItem in "${KEXT_ITEMS[@]}"; do
    cp -R "${OUTDir_TMP}/${kextItem}" . || copyErr
  done
}

# Exclude Trash
function cTrash() {
  rm -rf "${OUTDir_TMP}"
}

function enjoy() {
  logger_info "All Kexts downloaded!"
  open ./
}

init
download
unpack
install
cTrash
if [[ "$1" != "NOOPEN" ]]; then
  enjoy
fi
