;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
CADENA_10 DB "CUANTOS NUMEROS QUIERES CHECAR?",0
INGRESA_NUMERO_10 DB "INGRESA UN NUMERO A CHECAR: ", 0
RESULTADO_1_10 DB "EL NUMERO ES PAR", 0
RESULTADO_2_10 DB "EL NUMERO ES IMPAR", 0
ENTRADA_10 DB "CUANTOS NUMEROS"

.code
     main18 PROC
          ;L�gica del Programa

          MOV EDX, OFFSET CADENA_10

          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          MOV ECX, EAX ;PARA ESTABLECER EL NUMERO DE ITERACIONES

          CICLO:
                MOV EDX, OFFSET INGRESA_NUMERO_10
                CALL WRITESTRING
                CALL CRLF
                CALL READINT


                MOV EDX, 0 ;PARA FACILITAR LA REALIZACION DE LA DIVISION

                MOV EBX, 2 ;DIVISOR

                DIV EBX ; REALIZA LA DIVISION ENTRE EAX Y EBX

                CMP EDX, 0 ; CHECA SI EL RESIDUO ES CERO

                JNZ IMPAR  ; CUANDO ES CERO SALTA

                ;CUANDO SI SEA CERO, CONTINUA...
                MOV EDX, OFFSET RESULTADO_1_10
                JMP CONTINUAR

                IMPAR:
                    MOV EDX, OFFSET RESULTADO_2_10

                CONTINUAR:

                CALL WRITESTRING
                CALL CRLF


                LOOP CICLO
          exit          
     main18 ENDP
     END main18