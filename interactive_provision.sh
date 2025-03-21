#!/bin/bash

function check_if_user_exist() {
    if id -u "$1" >/dev/null 2>&1; then
        echo 1
    else
        echo 0
    fi
}

function interactive() {
    echo ""
    echo "Interactive User Creation"
    echo ""

    read -rp "Enter full name: " FULLNAME

    while true; do
        read -rp "Enter new username: " NEWUSER

        USER_EXIST=$(check_if_user_exist $NEWUSER)

        if [[ "$USER_EXIST" -eq 0 ]]; then
            echo ""
            sudo useradd -m -c "$FULLNAME" $NEWUSER
            sudo passwd $NEWUSER

            echo ""
            echo "Successfully create user: $NEWUSER"
            echo ""
            break
        else
            echo "Error: User '$NEWUSER' already exists."
            echo ""
        fi
    done
}
