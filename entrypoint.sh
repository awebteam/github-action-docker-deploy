#!/bin/sh

set -e

function main() {
  http \
    \ --ignore-stdin 
    \ --verbose POST 
    \ "https://europe-west3-microops.cloudfunctions.net/microops"
    \ repo="github.com/${GITHUB_REPOSITORY}"
    \ ref=$(echo ${GITHUB_REF} | sed -e "s/refs\///g")
}

main
