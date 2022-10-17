;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables

.code
     main17 PROC
          ;Lógica del Programa
          
          ;LA INSTRUCCION LOOP COMPRUEBA AL REGISTRO ECX
          ; Y REALIZA UN ITERACION MIENTRAS QUE ECX SEA MAYOR QUE 0
          ; -- POR CADA ITERACION ECX DECREMENTA

          MOV EAX, 10D
          MOV ECX, 5
           
        CICLO:
            CALL WRITEDEC
            CALL CRLF
            LOOP CICLO
          
     main17 ENDP
     END main17