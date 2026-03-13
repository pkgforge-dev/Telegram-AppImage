#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm libappindicator

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano

echo "Getting telegram binary..."
echo "---------------------------------------------------------------"
mkdir -p ./AppDir/bin
wget 'https://github.com/telegramdesktop/tdesktop/releases/download/v6.6.2/tsetup.6.6.2.tar.xz' -O /tmp/telegram.tar.xz
tar xvf /tmp/telegram.tar.xz
mv -v ./Telegram/Telegram ./AppDir/bin
