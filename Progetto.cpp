#include <iostream>
#include <sstream>
#include <stdio.h>
#include <thread>
#include <vector>
#include <ctype.h>

void move(char letter, std::string format, int option) {
    char upperletter = toupper(letter);
    std::stringstream ss;
    switch (option) {
    case 5:
        ss << "mv " << letter << "?* " << upperletter << "?* " << letter;
        break;
    case 6:
        ss << "mv *." << format << " " << format;
        break;
    }
    system(ss.str().c_str());
}
void movethreaded(int option) {
    std::vector<char> alphabet = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
    std::vector<std::string> formats = { "doc", "docx", "docm", "dot", "dotx", "dotm", "rtf", "odt", "txt", "xls", "xlsx", "xlsm", "xlsb", "xlt", "xltx", "xltm", "csv", "ods", "ppt", "pptx", "pptm", "pot", "potx", "potm", "ppsx", "ppsm", "odp", "psd", "psb", "ai", "eps", "pdf", "indd", "indt", "indb", "tif", "tiff", "mp4", "mov", "avi", "wmv", "mkv", "flv", "mpg", "mpeg", "3gp", "m4v", "webm", "vob", "ts", "m2ts", "mts", "ogv", "rmvb", "mp3", "wav", "flac", "aac", "m4a", "ogg", "wma", "aiff", "ape", "alac", "dsd", "pcm" };
    std::vector<std::thread> threads;
    switch (option) {
    case 5:
        for (int i = 0; i < alphabet.size(); i++) {
            threads.push_back(std::thread(move, alphabet[i], "filler", option));
        }
        break;
    case 6:
        for (int i = 0; i < formats.size(); i++) {
            threads.push_back(std::thread(move, 'f', formats[i], option));
        }
    }
    for (auto& th : threads) {
        th.join();
    }
}
void size(int maxsize, std::string dirss) {
    std::stringstream size10mss;
    std::stringstream size100mss;
    std::stringstream size1gss;
    std::stringstream sizeover1gss;
    switch (maxsize) {
    case 10:
        size10mss << dirss << "mkdir 10M" << " && " << "find -size -10M -exec mv {} 10M/ \\";
        system(size10mss.str().c_str());
        break;
    case 100:
        size100mss << dirss << "mkdir 10M" << " && " << "find -size -100M -exec mv {} 100M/ \\";
        system(size100mss.str().c_str());
        break;
    case 1000:
        size1gss << dirss << "mkdir 1G" << " && " << "find -size -1000M -exec mv {} 1G/ \\";
        system(size1gss.str().c_str());
        break;
    case 1001:
        sizeover1gss << dirss << "mkdir over1G" << " && " << "find -size +1000M -exec mv {} over1G/ \\";
        system(sizeover1gss.str().c_str());
        break;
    }
}

int menu(std::string dirssderiv) {
    int option;
    std::string name;
    std::string format;
    std::string directory;
    std::stringstream txtss;
    std::stringstream namess;
    std::stringstream dirss;
    std::stringstream mkdiralphabetss;
    std::stringstream mkdirformatss;
    std::vector<std::thread> threadssize;
    std::cout << "1) Selezionare su quale directory eseguire il programma" << std::endl;
    std::cout << "2) Ricerca di un file/cartella dato il nome" << std::endl;
    std::cout << "3) Ricerca di tutti i file .txt che contengono una data parola" << std::endl;
    std::cout << "4) Ricerca di file per tipo" << std::endl;
    std::cout << "5) Creazione di cartelle che dividano i file in ordine alfabetico" << std::endl;
    std::cout << "6) Creazione di cartelle che dividano i file per tipo" << std::endl;
    std::cout << "7) Creazione di cartelle che dividano i file per dimensione (categorie: sotto 10 MB, sotto 100 MB, sotto 1GB, file pi� grandi)" << std::endl;
    std::cout << "8) Quit" << std::endl;
    std::cout << std::endl;
    std::cout << "Inserisci il numero dell'operazione che vuoi eseguire: ";
    std::cin >> option;
    switch (option) {
    case 1:

        std::cout << "Inserisci la directory su cui vuoi lavorare: ";
        std::cin >> directory;
        dirss << "cd " << directory << " && ";
        std::cout << "Eseguo l'operazione " << option << "..." << std::endl;
        break;
    case 2:
        std::cout << "Inserisci il nome del file che vuoi cercare: ";
        std::cin >> name;
        namess << dirssderiv << "find . -name " << name;
        std::cout << "Eseguo l'operazione " << option << "..." << std::endl;
        system(namess.str().c_str());
        break;
    case 3:
        std::cout << "Inserisci il nome del file txt che vuoi cercare: ";
        std::cin >> name;
        txtss << dirssderiv << "find . -type f -name " << name;
        std::cout << "Eseguo l'operazione " << option << "..." << std::endl;
        system(txtss.str().c_str());
        break;
    case 4:
        std::cout << "Inserisci il formato del file che vuoi cercare: ";
        std::cin >> format;
        namess << dirssderiv << "find . -type f -name *." << format;
        std::cout << "Eseguo l'operazione " << option << "..." << std::endl;
        break;
    case 5:
        mkdiralphabetss << dirssderiv << "mkdir a b c d e f g h i j k l m n o p q r s t u v w x y z";
        system(mkdiralphabetss.str().c_str());
        std::cout << "Eseguo l'operazione " << option << "..." << std::endl;
        movethreaded(option);
    case 6:
        mkdirformatss << dirssderiv << "mkdir doc docx docm dot dotx dotm rtf odt txt xls xlsx xlsm xlsb xlt xltx xltm csv ods ppt pptx pptm pot potx potm ppsx ppsm odp psd psb ai eps pdf indd indt indb tif tiff mp4 mov avi wmv mkv flv mpg mpeg 3gp m4v webm vob ts m2ts mts ogv rmvb mp3 wav flac aac m4a ogg wma aiff ape alac dsd pcm";
        system(mkdirformatss.str().c_str());
        std::cout << "Eseguo l'operazione " << option << "..." << std::endl;
        movethreaded(option);
        break;

    case 7:
        threadssize.push_back(std::thread(size, 10, dirssderiv));
        threadssize.push_back(std::thread(size, 100, dirssderiv));
        threadssize.push_back(std::thread(size, 1000, dirssderiv));
        threadssize.push_back(std::thread(size, 1001, dirssderiv));
        for (auto& th : threadssize) {
            th.join();
        }

        break;
    case 8:
        std::cout << "Exiting..." << std::endl;
        break;
    }
    if (option == 1) { menu(dirss.str().c_str()); }
    return 0;
}
int main() {
    menu("$PWD");
}
