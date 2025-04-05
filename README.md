# CYK-BISON
- Algoritmo CYK (Cocke-Younger-Kasami) como su palabra lo indica es un algoritmo, de analisis sintactico parta uso de gramticas libres de contexto, determina si una cadena dada pertenece al lenguaje definido por una gramatrica libre de contexto y puede contruir el arbol de analisis sintactico si la cadena es valida.
-  Bison una herramienta generadora de analizadores sintácticos (parsers). Bison toma una descripción formal de la gramática de un lenguaje y genera automáticamente el código (normalmente en C o C++) necesario para verificar si una entrada de texto sigue esa gramática y para analizar su estructura. En esencia, Bison nos ayuda a "entender" la sintaxis de nuestro lenguaje específico.
  
# FUNCIONALIDADES CYK.
- **Reconocimiento**: Indica si una cadena pertenece o no al lenguaje definido por la gramática. La respuesta es un simple "sí" o "no".
- **Análisis Sintáctico (Parsing)**: Con modificaciones, el algoritmo puede construir uno o todos los posibles árboles de análisis sintáctico para una cadena válida. Esto revela la estructura gramatical de la cadena según las reglas de la GLC.
- **Eficiencia**: Al utilizar una técnica de programación dinámica, el CYK resuelve el problema del análisis sintáctico en tiempo polinómico (O(n3⋅∣G∣2) donde n es la longitud de la cadena y ∣G∣ es el tamaño de la gramática). Esto lo hace más eficiente que algunos otros algoritmos de parsing para GLCs generales.

# FUNCIONALIDADES BISON.
- **Generación de Analizadores Sintácticos (Parsers)**: Esta es su función primordial. A partir de una descripción formal de la gramática de un lenguaje, Bison genera automáticamente el código fuente (típicamente en C, C++, o Java) de un parser.
- **Soporte para Gramáticas Libres de Contexto (GLC)**: Bison está diseñado para trabajar con GLCs, que son un formalismo ampliamente utilizado para describir la sintaxis de lenguajes de programación y otros lenguajes formales.
- **Implementación de Algoritmos de Parsing LALR(1) y GLR**: Por defecto, Bison genera parsers basados en el algoritmo LALR(1), que es eficiente y adecuado para una gran variedad de gramáticas. También ofrece soporte para el algoritmo GLR (Generalized LR parsing), que permite manejar gramáticas más ambiguas.
- **Resolución de Ambigüedades**: Aunque es mejor diseñar gramáticas no ambiguas, Bison proporciona mecanismos para resolver conflictos sintácticos (shift/reduce y reduce/reduce) que pueden surgir en gramáticas ambiguas, permitiendo al usuario especificar la precedencia y asociatividad de los operadores.
- **Integración con Analizadores Léxicos (como Flex)**: Bison se utiliza comúnmente en conjunto con herramientas como Flex (o Lex) que generan analizadores léxicos (scanners o tokenizers). Bison espera recibir una secuencia de tokens como entrada desde el analizador léxico.
- **Acciones Semánticas**: Permite asociar código (en el lenguaje de salida elegido) con cada regla gramatical. Estas "acciones semánticas" se ejecutan cuando el parser reconoce una instancia de la regla, permitiendo realizar tareas como la construcción de árboles de sintaxis abstracta, la verificación de tipos, o la generación de código.
- **Informes de Errores**: Bison genera parsers que pueden detectar errores de sintaxis en la entrada y proporcionar mensajes de error informativos, incluyendo la ubicación del error en el código fuente.
- **Generación de Código en Múltiples Lenguajes**: Originalmente diseñado para generar código en C, las versiones modernas de Bison también pueden generar código en C++ y Java, lo que lo hace versátil para diferentes entornos de desarrollo.

# REQUISITOS.
- **Sistema Operativo Linux**.(CYK)(BISON)
- **Ejecutable del Programa CYK**.(CYK)
- **Permisos de Ejecución**.(CYK)
- **Compilador de C/C++ (típicamente GCC o Clang)**.(BISON)
- **El programa ejecutable generado**.(BISON)
- **Permisos de Ejecución**.(BISON)
- **Archivos de Entrada para el Programa Generado**.(BISON)

# USO.
 1. **PREPARACIÓN**.
    - Asegurate de tener tu sistema operativo listo, carpetas y archivos listos.
    - Para bison asegurate de tener BISON instalado y compilador para C como en este caso GCC.
    - Programas ejecutables como en este caso. (CYK) y (bison_parser)
 2. **EJECUCIÓN**.
    - Abre una terminal y navega al directorio donde guardaste los archivos (CYK) Y (bison_parser); para "CYK" la carpeta es "cyk_implementation" y para "bison_parser" la carpeta es "cyk_bison_comp".
    - Para ejecutable "CYK" en la terminal lo hacemos con el comando (time ./cyk) para que podramos tener el tiempo de ejecución.
    - Para ejecutable "bison_parser" en la terminal lo hacemos con el comando (time ./bison_parser) para que podramos tener el tiempo de ejecución.
    - Importante: Los ejecutables con sus comandos se trabajan desde cada carpeta.
  3. **INTERACCIÓN**
    - CYK: Dada la cadena nos va informar si es valida o no es valida y su tiempo.
    - BISON: Dada la cadena nos va informar si es valida o no es valida y su tiempo.
  4. **RESULTADOS**
    - La diferencia y comparacion de tiempo la podemos ver en el porcentaje de la CPU.


Comparación.
