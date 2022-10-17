;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cbase1_7 db "Ingresa La Base: ",0
caltura2_7 db "Ingresa La Altura: ",0
cResultado_7 db "Resultado: ",0

;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
; POR ENCIMA DEL DE VARIABLES

.code
     main7 PROC
          ;Lógica del Programa

          mov edx, offset cbase1_7 

          call writeString 

          call crlf

          call readint

          mov ecx, eax

          call crlf

          mov edx, offset caltura2_7

          call writeString

          call crlf

          call readint

          mul ecx

          call crlf

          mov edx, offset cResultado_7

          call writeString

          call writeint

          call crlf


          exit
     main7 ENDP
     END main7