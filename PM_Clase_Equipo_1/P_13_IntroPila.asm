;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
INGRESA_NUMERO_25 DB "INGRESA UN NUMERO A CHECAR:", 0
CONTADOR_25 DWORD 0

.code
     main25 PROC
          ;Lógica del Programa
          
          MOV ECX, 10

          PUSH ECX

          MOV ECX, 5

          CICLO:
              MOV EAX, ECX
              CALL WRITEDEC
              CALL CRLF
         LOOP CICLO

         POP EAX

         CALL CRLF
         CALL WRITEDEC
         CALL CRLF


          exit          
     main25 ENDP
     END main25