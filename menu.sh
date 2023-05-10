#!/bin/bash
#!/bin/bash
# Define the menu options
options=("Ricerca con Nome" "Ricerca File Txt" "Ricerca file per tipo" "Esci")

# Define a function to handle the user's selection
handle_selection() {
    case $1 in
        1) # Option 1
            echo "Eseguo il codice dell'opzione 1..."
	     read -p "Inserisci il nome del file che vuoi cercare : " nfile	
		sudo find . -name "$nfile"	    
	    ;;
        2) # Opzione 2
            echo "Eseguo il codice dell'opzione 2..."
            # Paste your code for Option 2 here
            ;;
        3) # Opzione 3
            echo "Eseguo il codice dell'opzione 3..."
            # Paste your code for Option 3 here
            ;;
        4) # Uscita
            echo "Uscita in corso..."
            exit
            ;;
        *) # Uscita
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
