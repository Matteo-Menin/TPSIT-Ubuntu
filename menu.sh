#!/bin/bash

# Define the menu options
options=("Option 1" "Option 2" "Option 3" "Quit")

# Define a function to handle the user's selection
handle_selection() {
    case $1 in
        1) # Option 1
            read -p "Insert the name of the file/folder you want to search for: " nfile	
            find . -name "$nfile"	
            echo "Executing code for Option 1..."  
            ;;
        2) # Option 2
            read -p "Insert the name of the txt file you want to search for: " namefile
            find . -type f -name "$namefile.txt"
            echo "Executing code for Option 2..."
            ;;
        3) # Option 3
            echo "Executing code for Option 3..."
            sudo find . -type f -name ".estensioneFile" 5)mkdir a b c d e f g h i l m n o p q r s t u v w x y z
            mv a?* A?* a
            mv b?* B?* b
            mv c?* C?* c
            mv d?* D?* d
            mv e?* E?* e
            mv f?* F?* f
            mv g?* G?* g
            mv h?* H?* h
            mv i?* I?* i
            mv j?* J?* j
            mv k?* K?* k
            mv l?* L?* l
            mv m?* M?* m 
            mv n?* N?* n 
            mv o?* O?* o 
            mv p?* P?* p 
            mv q?* Q?* q 
            mv r?* R?* r
            mv s?* S?* s 
            mv t?* T?* t 
            mv u?* U?* u 
            mv v?* V?* v
            mv w?* W?* w 
            mv x?* X?* x 
            mv y?* Y?* y
            mv z?* Z?* z
            
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
