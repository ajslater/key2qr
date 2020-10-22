#!/bin/bash
# Export gpg secret and public keys to QR pngs
# Requires gpg >= 2 and qrencode
set -euo pipefail
KEY=$1

gpg --armor --export-secret-key "$KEY" | qrencode --output "${KEY}_secret.png"
gpg --armor --export "$KEY" | qrencode --output "${KEY}_public.png"
