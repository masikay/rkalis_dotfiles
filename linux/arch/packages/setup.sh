#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../../../scripts/functions.sh

COMMENT=\#*

sudo -v

info "Installing Arch/Manjaro packages..."
pacman -Syu

yay -S --needed -noconfirm - < pkglist
success "Finished installing Arch/Manjaro packages."
