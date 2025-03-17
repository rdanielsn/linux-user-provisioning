#!/bin/bash

echo "[USER PROVISIONING]"
echo ""

while true; do
    echo "Choose provisioning method: "
    echo "1. Interactive user creation"
    echo "2. Bulk user creation from CSV file"
    read -rp "Enter your choice (1 or 2): " METHOD

    case $METHOD in
    1)
        echo ""
        echo "You've choosen interactive user creation"
        break
        ;;

    2)
        echo ""
        echo "You've choosen bulk user creation from CSV file"
        break
        ;;
    *)
        echo "Error: Invalid input. Enter either 1 or 2."
        echo ""
        ;;

    esac
done

echo "Finished"
