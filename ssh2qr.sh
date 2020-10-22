#!/bin/bash
# Export an ssh key to a qr png
# Requires qrencode
set -euo pipefail
KEY_PATH=$1

qrencode --output "${KEY_PATH}.png" < "$KEY_PATH"
