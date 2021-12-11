%{
#include <iostream>
#include <string>
using namespace std;

#include "tokens.h"
#include "Lexer.h"
%}

%option debug
%option outfile="Lexer.cpp"
%option yyclass="C_1::Lexer"
%option c++
%option noyywrap

ENTERO [0-9]+
FLOTANTE (([0-9]+\.[0-9]*|\.[0-9]+)([Ee][+-]?[0-9]+)?|[0-9]+([eE][+-]?[0-9]+))(f|F)
DOUBLE (([0-9]+\.[0-9]*|\.[0-9]+)([Ee][+-]?[0-9]+)?|[0-9]+([eE][+-]?[0-9]+))(d|D)?
ID [A-Za-z_][A-Za-z0-9_]*
ESP [ \t\n\r\v]
CADENA ["]([^"\\\n]|\\.|\\\n)*["]
CARACTER ['][\x20-\x7E]['] 

%%
"char"   { return CHAR;}
"int"    { return INT;}
"float"  { return FLOAT;}
"double" { return DOUBLE;}
"struct" { return STRUCT;}
"void"   { return VOID;}
"if"     { return IF;}
"else"   { return ELSE;}
"while"  { return WHILE;}
"do"     { return DO;}
"print"  { return PRINT;}
"scan"   { return SCAN;}
"break"  { return BREAK;}
"return" { return RETURN;}
"+"      { return MAS;}
"-"      { return MENOS;}
"*"      { return MULT;}
"/"      { return DIV;}
"="      { return ASIG;}
"||"     { return OR;}
"&&"     { return AND;}
"!"	    { return NOT;}
"<"      { return MENOR;}
">"      { return MAYOR;}
"=="     { return IGUAL;}
"!="     { return NOIGUAL;}
">="     { return MAYORIGUAL;}
"<="     { return MENORIGUAL;}
";"      { return PYC;}
","      { return COMA;}
"."      { return PUNTO;}
"("      { return LPAR;}
")"      { return RPAR;}
"{"      { return LLLAVE;}
"}"      { return RLLAVE;}
{ENTERO}    { return NUMERO;}
{FLOTANTE}  { return NUMERO;}
{DOUBLE}    { return NUMERO;}
{CADENA}    { return CADENA;}
{CARACTER}  { return CARACTER;}
{ID} {return ID;}
{ESP} {}

.    { cout<<"ERROR LEXICO "<<yytext<<endl;}   //Cualquier caracter excepto salto de linea

%%