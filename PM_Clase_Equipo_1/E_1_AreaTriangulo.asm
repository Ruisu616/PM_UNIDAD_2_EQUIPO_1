;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
cbase_9 db "Ingresa La Base: ",0
caltura_9 db "Ingresa La Altura: ",0
cResultado_9 db "El Area Del Triangulo Es: ",0


.code
     main9 PROC
          ;L�gica del Programa

          mov edx, offset cbase_9

          call writeString 

          call crlf

          call readint

          mov ebx, eax

          call crlf

          mov edx, offset caltura_9

          call writeString

          call crlf

          call readint

          mul ebx

          mov edx, 0

          mov ecx, 2

          div ecx

          call crlf

          mov edx, offset cResultado_9

          call writeString

          call writeint

          call crlf


          exit
     main9 ENDP
     END main9