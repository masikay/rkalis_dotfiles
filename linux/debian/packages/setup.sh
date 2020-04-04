#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../../../scripts/functions.sh

COMMENT=\#*

sudo -v

info "Installing Debian/Ubuntu packages..."

success "Finished installing Debian/Ubuntu packages."
