# Analizador Léxico

Implementación del analizador léxico para el lenguaje Cmm usando Flex.
El archivo `main.cpp` es para probar el código.

## Instrucciones

Para generar el analizador léxico:
```shell
$ flex lexer.ll
```

Para probar el analizador léxico:
```shell
$ flex lexer.ll
$ g++ main.cpp Scanner.cpp -o lexer
$ ./lexer /path/to/test

