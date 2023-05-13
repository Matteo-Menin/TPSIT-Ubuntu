#!/bin/bash

# Define the menu options
options=("Option 1" "Option 2" "Option 3" "Option4" "Quit")

# Define a function to handle the user's selection
handle_selection() {
    case $1 in
        1) # Option 1
            read -p "Inserisci il nome del file che vuoi cercare: " nfile	
            find . -name "$nfile"	
            echo "Eseguo il codice 1..."  
            ;;
        2) # Option 2
            read -p "Inserisci il nome del file txt che vuoi cercare: " namefile
            find . -type f -name "$namefile.txt"
            echo "Eseguo il codice 2..."
            ;;
        3) # Option 3
            mkdir a b c d e f g h i j k l m n o p q r s t u v w x y z
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
            echo "Eseguo il codice 3..."
            ;;
            
        4) # Option 4
            #Paste the code here
            ;;
            
            
        5) # Quit
            echo "Sto Uscendo..."
            exit
            ;;
        *) # Invalid option
            echo "Opzione non valida, per favore riprova."
            ;;
    esac
}

# Loop che esegue i comandi fino alla richiesta di uscita da parte dell'utente
while true; do
    # Mostra il menù
    echo "Seleziona un'opzione: "
    for i in "${!options[@]}"; do
        printf "%d) %s\n" "$((i+1))" "${options[$i]}"
    done

    # Legge la selezione dell'utente
    read -rp "Inserisci un numero: " selection

    # Gestisce la selezione dell'utente
    handle_selection "$selection"
done
