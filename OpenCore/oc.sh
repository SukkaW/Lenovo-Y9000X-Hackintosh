#!/bin/bash
#set -x # for DEBUGGING

# Created by Sukka on 2020-03-03
#
# Reference:
# https://github.com/daliansky/XiaoMi-Pro-Hackintosh/blob/87978828d0fcd0f0fe71411aac4ee7a09bc06da8/Kexts/download_kexts.sh
# https://github.com/williambj1/Hackintosh-EFI-Asus-Zephyrus-S-GX531/blob/master/Makefile.sh by @williambj1

# WorkSpaceDir
OUTDir="EFI"
OUTDir_TMP="tmp"
WSDir="$( cd "$(dirname "$0")" || exit 1; pwd -P )/${OUTDir}"

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
  cd ../../ || exit 1
  rm -rf "${OUTDir}"
  exit 1
}

# Workaround for Release Binaries that don't include "RELEASE" in their file names (head or grep)
function dGR() {
  local rawURL
  local urls=()

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

    urls+=( "https://github.com$(curl -L --silent "${rawURL}" | grep '/download/' | grep -m 1 RELEASE | sed 's/^[^"]*"\([^"]*\)".*/\1/')" )
  else
    rawURL="https://api.github.com/repos/$1/releases$tag"
    urls+=( "$(curl --silent "${rawURL}" | grep 'browser_download_url' | grep -m 1 RELEASE | tr -d '"' | tr -d ' ' | sed -e 's/browser_download_url://')" )
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
}

function download() {
  dGR "acidanthera/OpenCorePkg" NULL "${OUTDir_TMP}"

  logger_info "Downloading ${magenta}https://github.com/acidanthera/OcBinaryData/archive/master.zip${reset}"
  curl -# -L -o "${OUTDir_TMP}/OcBinaryData.zip" "https://github.com/acidanthera/OcBinaryData/archive/master.zip" || networkErr "$1"
}

# Unpack
function unpack() {
  logger_info "Unpacking files"
  eval "$(cd ${OUTDir_TMP} && unzip -qq "*.zip" || exit 1)"
}

# Install
function install() {
  logger_info "Building OpenCore Folder Structure"

  cp -R "${OUTDir_TMP}/X64/EFI/" . || copyErr
  cp -R "${OUTDir_TMP}/OcBinaryData-master/" ./OC || copyErr

  rm -rf "OC/.gitignore"

  logger_info "Deleting useless UEFI drivers"

  local USELESS_DRIVERS=(
    "HiiDatabase.efi"
    "ExFatDxe.efi"
    "ExFatDxeLegacy.efi"
    "Ps2KeyboardDxe.efi"
    "Ps2MouseDxe.efi"
    "UsbMouseDxe.efi"
    "PartitionDxe.efi"
    "HfsPlusLegacy.efi"
    "HfsPlus32.efi"
    "XhciDxe.efi"
    "OpenUsbKbDxe.efi"
    "OpenPartitionDxe.efi"
    "OpenHfsPlus.efi"
    "NvmExpressDxe.efi"
  )

  for driver in "${USELESS_DRIVERS[@]}"; do
    rm -rf "OC/Drivers/${driver}" > /dev/null 2>&1
  done

  logger_info "Deleting useless audio resources files"

  for audio in OC/Resources/Audio/*; do
    if [[ $audio == *"_Boot"* ]]; then
      true
    else
      rm -rf ${audio}
    fi
  done

  logger_info "Deleting useless UEFI Tools"

  rm -rf "OC/Tools/BootKicker.efi"

  logger_info "Finished construct OpenCore EFI folder!"
}

function changelog() {
  logger_info "Showing latest OpenCore Changelog"
  echo

  while read -r line
  do
    [[ $line == "" ]] && break

    echo "$line"
  done < "${OUTDir_TMP}/Docs/Changelog.md"

  echo

  if [[ -f "../OldSample.plist" ]]; then
    logger_info "Diff Sample.plist"
    echo
    git --no-pager diff --no-index "../OldSample.plist" "${OUTDir_TMP}/Docs/Sample.plist"
  fi
  cp -R "${OUTDir_TMP}/Docs/Sample.plist" ../OldSample.plist || copyErr
}

# Exclude Trash
function cTrash() {
  rm -rf "${OUTDir_TMP}"
}

function enjoy() {
  open ./
}

init
download
unpack
install
changelog
cTrash
if [[ "$1" != "NOOPEN" ]]; then
  enjoy
fi
