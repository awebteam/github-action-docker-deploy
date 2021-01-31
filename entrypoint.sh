#!/bin/sh

set -e

function main() {
  DEPLOY_URL="https://europe-west3-microops.cloudfunctions.net/microops/deploy"
  DEPLOY_REPO="github.com/${GITHUB_REPOSITORY}"
  DEPLOY_REF=$(echo ${GITHUB_REF} | sed -e "s/refs\///g")

  http --ignore-stdin --verbose POST "${DEPLOY_URL}" repo="${DEPLOY_REPO}" ref="${DEPLOY_REF}"
}

main
