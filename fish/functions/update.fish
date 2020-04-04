function update --description 'Get Software Updates depending on the OS type'
    sudo softwareupdate -i -a
    brew update
    brew upgrade --force
    brew cleanup
    mas upgrade

end
