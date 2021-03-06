#include <iostream>
#include <fstream>
#include "Lexer.h"

using namespace std;
using namespace C_1;

int main(int argc, char *argv[]){
    if(argc < 2){
        cout << "Faltan argumentos" << endl;
        cout << "Uso esperado: './lexer [archivo_entrada]'" << endl;
        return EXIT_FAILURE;
    }

    filebuf fb;
    fb.open(string(argv[1]),ios::in);
    istream in(&fb);
    Lexer lexer(&in);

    int token = lexer.yylex();

    while(token != 0){
        cout<< token << ", " << lexer.YYText() << endl;
        token = lexer.yylex();
    }
    fb.close();
    return 0;
}

// flex lexer.ll
//  g++ main.cpp Scanner.cpp -o lexer
// ./lexer prueba.txt
