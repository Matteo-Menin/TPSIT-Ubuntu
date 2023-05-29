#include <iostream>
#include <sstream>
#include <stdio.h>
#include <thread>
#include <vector>
#include <ctype.h>

using namespace std;

int menu(string dirssderiv) {
    
    int option;
    
    string name;
    string format;
    string directory;
    stringstream txtss;
    stringstream namess;
    stringstream dirss;
    stringstream mkdiralphabetss;
    stringstream mkdirformatss;
    vector<thread> threadssize;
    
    cout << "1) Selezionare su quale directory eseguire il programma" << endl;
    cout << "2) Ricerca di un file/cartella dato il nome" << endl;
    cout << "3) Ricerca di tutti i file .txt che contengono una data parola" << endl;
    cout << "4) Ricerca di file per tipo" << endl;
    cout << "5) Creazione di cartelle che dividano i file in ordine alfabetico" <<endl;
    cout << "6) Creazione di cartelle che dividano i file per tipo" <<endl;
    cout << "7) Creazione di cartelle che dividano i file per dimensione (categorie: sotto 10 MB, sotto 100 MB, sotto 1GB, file pi˘ grandi)" <<endl;
    cout << "8) Quit" << endl;
    cout << endl;
    cout << "Inserisci il numero dell'operazione che vuoi eseguire: ";
    cin >> option;
    
    switch (option) {
    case 1:          
        cout << "Inserisci la directory su cui vuoi lavorare: ";
        cin >> directory;
        dirss << "cd " << directory << " && ";
        cout << "Eseguo l'operazione " << option << "..." << endl;
        break;
    case 2:
            // Metti il codice qui
    case 3:
            // Metti il codice qui
    case 4:
            // Metti il codice qui
    case 5:
            // Metti il codice qui
    case 6:
            // Metti il codice qui
    case 7:
            // Metti il codice qui
    case 8:
        cout << "Exiting..." << endl;
        break;
    }
    if (option == 1) { menu(dirss.str().c_str()); }
    return 0;
}


int main() {
    menu("$PWD");
}
