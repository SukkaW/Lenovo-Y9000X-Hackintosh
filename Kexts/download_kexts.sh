#!/bin/bash
#set -x # for DEBUGGING

# Created by Sukka on 2020-03-03
#
# Reference:
# https://github.com/daliansky/XiaoMi-Pro-Hackintosh/blob/87978828d0fcd0f0fe71411aac4ee7a09bc06da8/Kexts/download_kexts.sh
# https://github.com/williambj1/Hackintosh-EFI-Asus-Zephyrus-S-GX531/blob/master/Makefile.sh by @williambj1

# Vars

GH_KEXTS=(
    # "VoodooI2C/VoodooI2C" # Use local version
    "0xFireWolf/RealtekCardReader"
    "0xFireWolf/RealtekCardReaderFriend"
    "acidanthera/VirtualSMC"
    "acidanthera/BrcmPatchRAM"
    "acidanthera/WhateverGreen"
    "acidanthera/AppleALC"
    "acidanthera/HibernationFixup"
    "acidanthera/RestrictEvents"
    "acidanthera/VoodooPS2"
    "acidanthera/Lilu"
    "acidanthera/BrightnessKeys"
    "acidanthera/NVMeFix"
    "acidanthera/RTCMemoryFixup"
    "al3xtjames/NoTouchID"
    "zhen-zen/YogaSMC"
    "acidanthera/CPUFriend"
    "OpenIntelWireless/itlwm"
    "OpenIntelWireless/IntelBluetoothFirmware"
)

KEXT_ITEMS=(
    "AppleALC.kext"
    "HibernationFixup.kext"
    "Lilu.kext"
    # "VoodooI2C.kext"
    # "VoodooI2CHID.kext"
    "VoodooPS2Controller.kext"
    "WhateverGreen.kext"
    "RestrictEvents.kext"
    "NoTouchID.kext"
    "Kexts/SMCBatteryManager.kext"
    "Kexts/SMCLightSensor.kext"
    "Kexts/SMCProcessor.kext"
    "Kexts/VirtualSMC.kext"
    "BrcmBluetoothInjector.kext"
    "BrcmFirmwareData.kext"
    "BrcmPatchRAM3.kext"
    "BlueToolFixup.kext"
    "BrightnessKeys.kext"
    "RealtekCardReader.kext"
    "RealtekCardReaderFriend.kext"
    "NVMeFix.kext"
    "YogaSMC.kext"
    "CPUFriend.kext"
    "RTCMemoryFixup.kext"
)

RETRY_MAX=5

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
  #elif [[ "$1" == "cholonam/Sinetek-rtsx" ]]; then
  #  hgs=( "grep -m 1 Sinetek-rtsx-" )
  #elif [[ "$1" == "itlwm" ]]; then
  #  hgs=( "grep -m 1 AirportItlwm-Big_Sur"
  #        "grep -m 1 AirportItlwm-Catalina"
  #        "grep -m 1 AirportItlwm-High_Sierra"
  #        "grep -m 1 AirportItlwm-Mojave"
  #      )
  elif [[ "$1" == "zhen-zen/YogaSMC" ]]; then
    hgs=( "grep -m 1 YogaSMC-Release.zip" )
  elif [[ "$1" == "OpenIntelWireless/itlwm" ]]; then
    hgs=( "grep -m 1 _stable_Sonoma14.4.kext.zip" )
  elif [[ "$1" == "OpenIntelWireless/IntelBluetoothFirmware" ]]; then
    hgs=( "grep -m 1 IntelBluetooth-v" )
  else
    hgs=( "grep -m 1 RELEASE" )
  fi
}

# Download GitHub Release
function dGR() {
  local rawURL
  local urls=()
  local tag

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

  rawURL="https://ungh.cc/repos/$1/releases$tag"
  for hg in "${hgs[@]}"; do
    urls+=( "$(curl --silent "${rawURL}"  | jq '.release.assets[].downloadUrl' | grep -m 1 RELEASE | tr -d '"')" )
  done

  for url in "${urls[@]}"; do
    if [[ -z ${url} || ${url} == "https://github.com" ]]; then
      networkErr "$1"
    fi

    logger_info "Downloading ${magenta}${url##*\/}${reset}"

    cd ./"$3" || exit 1
    curl --retry 3 --connect-timeout 20 -# -L -O "${url}" || networkErr "$1"
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
# cTrash
if [[ "$1" != "NOOPEN" ]]; then
  enjoy
fi
