;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
CADENA_9 DB "CUANTOS SUMAS QUIERES REALIZAR?",0
INGRESA_NUMERO1_9 DB "INGRESA UN NUMERO: ", 0
INGRESA_NUMERO_9 DB "INGRESA OTRO NUMERO: ", 0
RESULTADO1_9 DB "EL RESULTADO DE LA SUMA ES: ", 0

.code
     main19 PROC
          ;Lógica del Programa

          MOV EDX, OFFSET CADENA_9

          CALL WRITESTRING
          CALL CRLF
          CALL READINT
          CALL CRLF

          MOV ECX,EAX

          CICLO:
                MOV EDX, OFFSET INGRESA_NUMERO1_9
                CALL WRITESTRING
                CALL CRLF
                CALL READINT
                CALL CRLF
                MOV EBX, EAX

                MOV EDX, OFFSET INGRESA_NUMERO_9
                CALL WRITESTRING
                CALL CRLF
                CALL READINT
                CALL CRLF

                ADD EAX, EBX
                MOV EDX, OFFSET RESULTADO1_9
                CALL WRITESTRING
                CALL WRITEINT
                CALL CRLF
                LOOP CICLO

          exit          
     main19 ENDP
     END main19