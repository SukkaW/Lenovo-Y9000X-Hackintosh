#!/bin/bash
#set -x # for DEBUGGING

# Created by stevezhengshiqi on 6 Jun, 2020
#
# Build ACPI SSDTs for XiaoMi-Pro EFI
#
# Reference:
# https://github.com/williambj1/Hackintosh-EFI-Asus-Zephyrus-S-GX531/blob/master/Makefile.sh by @williambj1

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

function init() {
  if [[ ${OSTYPE} != darwin* ]]; then
    logger_error "This script can only run in macOS, aborting"
    exit 1
  fi

  logger_info "Start building ACPI"

  cd "$(dirname "$0")" || exit 1

  if [[ -f "iasl-stable" ]]; then
    rm -rf "iasl-stable"
  fi
  if [[ -d "AML" ]]; then
    rm -rf "AML"
  fi
  mkdir -p AML
}

# Download iasl from Acidanthera's MaciASL repository
function download() {
  local url="https://raw.githubusercontent.com/$1/$2/master/$3"

  logger_info "Downloading ${magenta}${3##*\/}${reset}"

  curl -# -L -O "${url}" || networkErr "${3##*\/}"
}

function compile() {
  chmod +x iasl*
  logger_info "Start compiling ACPI Files"
  find . -name '*.dsl' -exec sh -c '
    red=$(tput setaf 1)
    reset=$(tput sgr0)
    green=$(tput setaf 2)
    gray=$(tput setaf 8)
    bold=$(tput bold)

    echo "${gray}[$(date "+%Y-%m-%d %H:%M:%S")]${reset} ${green}INFO${reset} Compiling ${1##*/}"

    ./iasl* -vw 2095 -vw 2173 -vs -p "${1%/*}/../AML/${1##*/}" "${1%}" > /dev/null 2>&1 || (
      echo "${gray}[$(date "+%Y-%m-%d %H:%M:%S")]${reset} ${red}ERROR${reset} Failed to compile dsl!"
      find . -maxdepth 1 -name "*.aml" -exec rm -rf {} + > /dev/null 2>&1
      exit 1
    )
  ' sh {} \;

  rm -rf iasl*

  logger_info "ACPI build finished"
}

function enjoy() {
  open ./
}

init
download Acidanthera MaciASL Dist/iasl-stable
compile
if [[ "$1" != "NOOPEN" ]]; then
  enjoy
fi
