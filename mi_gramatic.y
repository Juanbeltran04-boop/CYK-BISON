%{
#include <stdio.h>
#include <stdlib.h>

// Función para manejar errores de sintaxis
void yyerror(const char *s);
int yylex();
extern char *yytext;
FILE *yyin;
%}

%token A_TOKEN B_TOKEN

%%
start: S { printf("Cadena válida.\n"); };
S: A B;
A: A_TOKEN;
B: B_TOKEN;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int yylex() {
    int c = fgetc(yyin);
    switch (c) {
        case 'a': return A_TOKEN;
        case 'b': return B_TOKEN;
        case EOF: return 0; // Indica el final de la entrada
        default: return -1; // Carácter no reconocido
    }
}

int main(int argc, char *argv[]) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("No se pudo abrir el archivo");
            return 1;
        }
        if (yyparse() == 0) {
            // La acción semántica en la regla 'start' se encarga de imprimir el mensaje
        } else {
            printf("Cadena inválida.\n");
        }
        fclose(yyin);
    } else {
        fprintf(stderr, "Uso: %s <archivo_de_entrada>\n", argv[0]);
        return 1;
    }
    return 0;
}

