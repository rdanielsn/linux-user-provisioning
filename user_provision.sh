#!/bin/bash

source ./interactive_provision.sh
source ./bulk_provision.sh

echo "[USER PROVISIONING]"
echo ""

while true; do
    echo "Choose provisioning method: "
    echo "1. Interactive user creation"
    echo "2. Bulk user creation from CSV file"
    read -rp "Enter your choice (1 or 2): " METHOD

    case $METHOD in
    1)
        interactive
        break
        ;;

    2)
        bulk
        break
        ;;
    *)
        echo "Error: Invalid input. Enter either 1 or 2."
        echo ""
        ;;

    esac
done

echo "Finished"
