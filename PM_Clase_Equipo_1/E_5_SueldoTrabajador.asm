;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
csueldo1_13 db "Ingresa El Sueldo Del Trabajador: ",0
choras2_13 db "Ingresa Las Horas Que Labora: ",0
cResultado_13 db "El Sueldo Final es: ",0

.code
     main13 PROC
          ;L�gica del Programa

          mov edx, offset csueldo1_13

          call writeString 

          call crlf

          call readint

          mov ebx, eax

          call crlf

          mov edx, offset choras2_13

          call writeString

          call crlf

          call readint

          mul ebx

          call crlf

          mov edx, offset cResultado_13

          call writeString

          call writeint

          call crlf


          exit
     main13 ENDP
     END main13