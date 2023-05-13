#!/bin/bash

# Define the menu options
options=("Option 1" "Option 2" "Option 3" "Option 4" "Quit")

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
            mkdir doc docx docm dot dotx dotm rtf odt txt xls xlsx xlsm xlsb xlt xltx xltm csv ods ppt pptx pptm pot potx potm ppsx ppsm odp psd psb ai eps pdf indd indt indb tif tiff mp4 mov avi wmv mkv flv mpg mpeg 3gp m4v webm vob ts m2ts mts ogv rmvb mp3 wav flac aac m4a ogg wma aiff ape alac dsd pcm
            mv *.doc doc
            mv *.docx docx
            mv *.docm docm
            mv *.dot dot
            mv *.dotx dotx
            mv *.dotm dotm
            mv *.rtf rtf
            mv *.odt odt
            mv *.txt txt
            mv *.xls xls
            mv *.xlsx xlsx
            mv *.xlsm xlsm
            mv *.xlsb xlsb
            mv *.xlt xlt
            mv *.xltx xltx
            mv *.xltm xltm
            mv *.csv csv
            mv *.ods ods
            mv *.ppt ppt
            mv *.pptx pptx
            mv *.pptm pptm
            mv *.pot pot
            mv *.potx potx
            mv *.potm potm
            mv *.ppsx ppsx
            mv *.ppsm ppsm
            mv *.odp odp
            mv *.psd psd
            mv *.psb psb
            mv *.ai ai
            mv *.eps eps
            mv *.pdf pdf
            mv *.indd indd
            mv *.indt indt
            mv *.indb indb
            mv *.tif tif
            mv *.tiff tiff
            mv *.mp4 mp4
            mv *.mov mov
            mv *.avi avi
            mv *.wmv wmv
            mv *.mkv mkv
            mv *.flv flv
            mv *.mpg mpg
            mv *.mpeg mpeg
            mv *.3gp 3gp
            mv *.m4v m4v
            mv *.webm webm
            mv *.vob vob
            mv *.ts ts
            mv *.m2ts m2ts
            mv *.mts mts
            mv *.ogv ogv
            mv *.rmvb rmvb
            mv *.mp3 mp3
            mv *.wav wav
            mv *.flac flac
            mv *.aac aac
            mv *.m4a m4a
            mv *.ogg ogg
            mv *.wma wma
            mv *.aiff aiff
            mv *.ape ape
            mv *.alac alac
            mv *.dsd dsd
            mv a*.pcm pcm
            echo "Eseguo il codice 4..."
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
