;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cadena_4 db "Mensaje en Consola",0

.code
     main4 PROC
          ;Lógica del Programa

          mov edx, offset cadena_4

          call writestring

          exit
     main4 ENDP
     END main4