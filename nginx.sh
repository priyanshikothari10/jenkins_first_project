#!/usr/bin/env bash
set -euo pipefail

if ! command -v apt-get >/dev/null 2>&1; then
  echo "This script is intended for Ubuntu/Debian agents with apt-get."
  exit 1
fi

SUDO=""
if [ "${EUID}" -ne 0 ]; then
  SUDO="sudo"
fi

${SUDO} apt-get update
${SUDO} apt-get install -y nginx
${SUDO} systemctl enable --now nginx
${SUDO} systemctl status nginx --no-pager
