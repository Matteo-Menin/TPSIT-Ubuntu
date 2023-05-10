#!/bin/bash

# Define the menu options
options=("Option 1" "Option 2" "Option 3" "Quit")

# Define a function to handle the user's selection
handle_selection() {
    case $1 in
        1) # Option 1
            read -p "Inserisci il nome del file/cartella che vuoi cercare : " $nfile	
	    sudo find . -name "$nfile"	
            echo "Eseguo il codice dell'opzione 1..."  
            ;;
        2) # Option 2
            read -p "Inserisci il nome  del file txt che vuoi cercare: " $namefile
            sudo find . -type f -name "$namefile.txt"
            echo "Eseguo il codice dell'opzione 2..."
            ;;
        3) # Option 3
            echo "Executing code for Option 3..."
            # Paste your code for Option 3 here
            ;;
        4) # Quit
            echo "Exiting..."
            exit
            ;;
        *) # Invalid option
            echo "Invalid option. Please try again."
            ;;
    esac
}

# Loop until the user selects the Quit option
while true; do
    # Display the menu
    echo "Select an option:"
    for i in "${!options[@]}"; do
        printf "%d) %s\n" "$((i+1))" "${options[$i]}"
    done

    # Read the user's selection
    read -rp "Enter option number: " selection

    # Handle the user's selection
    handle_selection "$selection"
done
