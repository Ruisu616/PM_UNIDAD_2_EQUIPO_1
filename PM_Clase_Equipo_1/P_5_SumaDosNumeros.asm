;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cNumero1_5 db "Ingresa Numero 1: ",0
cNumero2_5 db "Ingresa Numero 2: ",0
cResultado_5 db "Resultado: ",0
aux dword 0


.code
     main5 PROC
          ;Lógica del Programa

          mov edx, offset cNumero1_5 ;Imprime mensaje ingresa numero 1

          call writeString 

          call crlf

          call readint

          mov aux, eax

          call crlf

          mov edx, offset cNumero2_5 ;Imprime mensaje ingresa numero 2

          call writeString

          call crlf

          call readint

          call crlf

          add eax, aux

          mov edx, offset cResultado_5 ;Imprime mensaje resultado

          call writeString

          call writeint

          call crlf


          exit
     main5 ENDP
     END main5