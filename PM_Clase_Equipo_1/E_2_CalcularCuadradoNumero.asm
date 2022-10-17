;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cnum_10 db "Ingresa Un Numero: ",0
cResultado_10 db "El Cuadrado Del Numero Ingresado Es: ",0


.code
     main10 PROC
          ;Lógica del Programa

          mov edx, offset cnum_10

          call writeString 

          call crlf

          call readint

          mul eax

          call crlf

          mov edx, offset cResultado_10

          call writeString

          call writeint

          call crlf


          exit
     main10 ENDP
     END main10