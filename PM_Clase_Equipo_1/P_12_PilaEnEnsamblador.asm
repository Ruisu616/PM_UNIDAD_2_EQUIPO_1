;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
INGRESA_NUMERO_24 DB "INGRESA UN NUMERO A CHECAR:", 0
CONTADOR_24 DWORD 0

.code
     main24 PROC
          ;Lógica del Programa
          
          MOV ECX, 10

          PUSH ECX

          MOV ECX, 5

          CICLO:
              MOV EAX, ECX
              CALL WRITEDEC
              CALL CRLF
         LOOP CICLO

         POP ECX

         MOV EAX, ECX
         CALL CRLF
         CALL WRITEDEC
         CALL CRLF


          exit          
     main24 ENDP
     END main24