function pubkey
    if test -e ~/.ssh/id_ecdsa.pub
        set key_type ECDSA
        set key ~/.ssh/id_ecdsa.pub
    else if test -e ~/.ssh/id_rsa.pub
        set key_type RSA
        set key ~/.ssh/id_rsa.pub
    end
    cat $key | pbcopy; and echo '> ${key_type} public key copied to pasteboard.'
end
