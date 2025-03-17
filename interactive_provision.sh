#!/bin/bash

function interactive() {
    echo ""
    echo "Interactive User Creation"
    echo ""

    read -rp "Enter full name: " FULLNAME
    read -rp "Enter new username: " NEWUSER

    sudo useradd -m -c "$FULLNAME" $NEWUSER
    sudo passwd $NEWUSER

    echo "Successfully create user: $NEWUSER"
}
