;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
cnum_15 db "Ingresa Un Numero: ",0
cResultado_15 db "El Valor Absoluto Del Numero Ingresado Es: ",0


.code
     main15 PROC
          ;L�gica del Programa

          mov edx, offset cnum_15

          call writeString 

          call crlf

          call readint

          call crlf

          cmp eax,0

          jl Menor_15

          jmp Resultado_15

          Menor_15:

          mov ebx, -1

          mul ebx

          Resultado_15:

          mov edx, offset cResultado_15

          call writeString

          call writeint

          call crlf


          exit
     main15 ENDP
     END main15