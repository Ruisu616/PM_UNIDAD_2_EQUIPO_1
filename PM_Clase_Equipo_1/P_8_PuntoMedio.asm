;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cx1_8 db "Ingresa El Valor De X1: ",0
cx2_8 db "Ingresa El Valor De X2: ",0
cResultado_8 db "Resultado: ",0

;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
; POR ENCIMA DEL DE VARIABLES

.code
     main8 PROC
          ;Lógica del Programa

          mov edx, offset cx1_8

          call writeString 

          call crlf

          call readint

          mov ebx, eax

          call crlf

          mov edx, offset cx2_8

          call writeString

          call crlf

          call readint

          add eax, ebx

          mov edx, 0

          mov ecx, 2

          div ecx

          call crlf

          mov edx, offset cResultado_8

          call writeString

          call writeint

          call crlf


          exit
     main8 ENDP
     END main8