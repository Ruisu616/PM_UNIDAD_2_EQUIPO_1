;Programaci�n de Microprocesadores
;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
dividiendo_2 dword 2
.code
     main2 PROC
          ;l�gica del Programa
          ;checar si un n�mero es par

          mov eax, 8 ;eax contiene al que se va a checar si es par

          mov edx, 0

          div dividiendo_2 ;eax  = cociente edx = residuo

          CMP EDX, 0 ; COMPARA EDX CON 0
          
          ;SUPONGA....
          MOV EAX, 1 ; SI EAX = 1, EL N�MERO COMPARADO ES PAR
          ; SI EAX  = 0, ENTONCES, EL NUMERO COMPARADO ES IMPAR

          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

          JNZ CAMBIA_VALOR_EAX ; CUANDON EL RESULTADO DE LA COMPARACI�N
                               ; ES DIFERENTE DE CERO, ENTONCES
                               ; SE SALTA A "CAMBIA_VALOR_EAX"
         JMP CONTINUAR

         CAMBIA_VALOR_EAX:
             MOV EAX,0             
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         
         CONTINUAR:
          CALL WRITEDEC
          CALL CRLF

          exit
     main2 ENDP
     END main2