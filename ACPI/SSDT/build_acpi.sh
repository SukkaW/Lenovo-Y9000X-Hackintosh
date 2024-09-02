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

function init() {
  logger_info "Start building ACPI"

  if which iasl > /dev/null; then
    logger_info "IASL compiler found"
  else
    logger_error "IASL compiler not found, please install it first! You can use 'brew install acpica'."
    exit 1
  fi

  cd "$(dirname "$0")" || exit 1

  if [[ -d "AML" ]]; then
    rm -rf "AML"
  fi
  mkdir -p AML
}

function compile() {
  logger_info "Start compiling ACPI Files"
  find . -name '*.dsl' -exec sh -c '
    red=$(tput setaf 1)
    reset=$(tput sgr0)
    green=$(tput setaf 2)
    gray=$(tput setaf 8)
    bold=$(tput bold)

    echo "${gray}[$(date "+%Y-%m-%d %H:%M:%S")]${reset} ${green}INFO${reset} Compiling ${1##*/}"

    iasl -vw 2095 -vw 2173 -vs -p "${1%/*}/../AML/${1##*/}" "${1%}" > /dev/null 2>&1 || (
      echo "${gray}[$(date "+%Y-%m-%d %H:%M:%S")]${reset} ${red}ERROR${reset} Failed to compile dsl!"
      find . -maxdepth 1 -name "*.aml" -exec rm -rf {} + > /dev/null 2>&1
      exit 1
    )
  ' sh {} \;

  rm -rf ./iasl*

  logger_info "ACPI build finished"
}

function enjoy() {
  open ./
}

init
compile
if [[ "$1" != "NOOPEN" ]]; then
  enjoy
fi
