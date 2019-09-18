#!/bin/sh

generate_oauth_token () {
    if [[ ! "$1" =~ ^[a-z0-9]+(\.[a-z0-9]+)*@qualifio\.com$ ]]; then
        echo "[ERROR] Email invalid. Please use your qualifio email."
        return 1
    fi

    printf 'Enter your password: '
    read -rs password
    echo ''
    echo "grant_type=password&username=$1&password=$password" | curl -X POST -d @- https://gitlab.qualif.io/oauth/token	
}

generate_oauth_token $1
