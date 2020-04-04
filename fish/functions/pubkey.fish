function pubkey
    if test -e ~/.ssh/id_ecdsa.pub
        set -x key_type ECDSA
        set -x key ~/.ssh/id_ecdsa.pub
    else if test -e ~/.ssh/id_rsa.pub
        set -x key_type RSA
        set -x key ~/.ssh/id_rsa.pub
    end
    cat $key | pbcopy; and echo "=> $key_type public key copied to pasteboard."
end
