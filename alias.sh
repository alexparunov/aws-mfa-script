#!/bin/bash
setToken() {
    #do things with parameters like $1 such as
    $HOME/.aws/aws-mfa-script/mfa.sh $1 $2
    source $HOME/.aws/.token_file
    echo "Your creds have been set in your env."
}

reuseSession() {
    source $HOME/.aws/.token_file
}

alias mfa=setToken
alias reuse_mfa_session=reuseSession
