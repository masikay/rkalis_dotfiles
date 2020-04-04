#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

OS=$(uname)
SOURCE="$(realpath .)"

if [ "$OS" == "Darwin" ]; then
    DESTINATION="$(realpath ~/Library/Application\ Support/Code/User)"
elif [ "$OS" == "Linux" ]; then
    DESTINATION="$(realpath ~/.config/Code\ -\ OSS/User)"
fi

info "Setting up Visual Studio Code..."

substep_info "Creating Visual Studio Code folders..."
mkdir -p "$DESTINATION"

find * -not -name "$(basename ${0})" -type f | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished setting up Visual Studio Code"

