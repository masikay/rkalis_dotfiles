#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../../scripts/functions.sh

sudo -v

# Install macOS packages
info "Installing XCode command line tools..."
if xcode-select --print-path &>/dev/null; then
    success "XCode command line tools already installed."
elif xcode-select --install &>/dev/null; then
    success "Finished installing XCode command line tools."
else
    error "Failed to install XCode command line tools."
fi

info "Installing Brewfile packages..."
brew bundle
success "Finished installing Brewfile packages."
