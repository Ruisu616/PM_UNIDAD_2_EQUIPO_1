;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
INGRESA_NUMERO_26 DB "INGRESA UN NUMERO A CHECAR:", 0
CONTADOR_26 DWORD 0

.code
     main26 PROC
          ;L�gica del Programa

          MOV EAX, 10
          MOV EBX, 5
          
          CALL WRITEDEC

          CALL CRLF

          XCHG EAX, EBX

          CALL WRITEDEC

          exit          
     main26 ENDP
     END main26