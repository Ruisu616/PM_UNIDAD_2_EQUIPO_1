;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cNumero1_6 db "Ingresa Numero 1: ",0
cNumero2_6 db "Ingresa Numero 2: ",0
cNumero3_6 db "Ingresa Numero 3: ",0
cResultado_6 db "Resultado: ",0

;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
; POR ENCIMA DEL DE VARIABLES

.code
     main6 PROC
          ;Lógica del Programa

          mov edx, offset cNumero1_6 ;Imprime mensaje ingresa numero 1

          call writeString 

          call crlf

          call readint

          ;RESPALDAR EL VALOR DE EAX PARA EVITAR QUE SE PIERDA
          ;EAX, EBX, ECX, EDX 

          mov ecx, eax


          call crlf

          mov edx, offset cNumero2_6 ;Imprime mensaje ingresa numero 2

          call writeString

          call crlf

          add eax, ecx

          call readint

          mov ecx, eax 

          call crlf

          mov edx, offset cNumero3_6 ;Imprime mensaje ingresa numero 3

          call writeString

          call crlf

          call readint

          add eax, ecx

          call crlf

          mov ebx, 3

          mov edx, 0

          div ebx;

          mov edx, offset cResultado_6 ;Imprime mensaje resultado

          call writeString

          call writeint

          call crlf


          exit
     main6 ENDP
     END main6