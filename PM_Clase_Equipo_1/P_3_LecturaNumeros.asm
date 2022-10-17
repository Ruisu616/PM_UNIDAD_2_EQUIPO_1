;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
.code
     main3 PROC

          ;Lógica del Programa

          MOV EAX, 10 ; VALOR INICIAL

          CALL CRLF ; SALTO DE LINEA

          ;LEER NUMEROS

          CALL READINT ; ALMACENA EL NUMERO INGRESADO POR EL USUARIO EN EAX

          CALL WRITEINT ;IMPRIME EL VALOR DE EAX

          CALL CRLF ; SALTO DE LINEA

          exit
     main3 ENDP
     END main3