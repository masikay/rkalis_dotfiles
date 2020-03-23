function update --description 'Get OS X Software Updates and update Homebrew and mas packages'
    sudo softwareupdate -i -a
    brew update
    brew upgrade --force
    brew cleanup
    mas upgrade

end
