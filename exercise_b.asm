DATA SEGMENT
    X DW 1234H
    Y DW 2345H
    Z DW 1234H
    W DW ?
DATA ENDS

STACKSEG SEGMENT
STACKSEG ENDS

CODE SEGMENT
    ASSUME DS:DATA, SS:STACKSEG, CS:CODE
    MAIN:
        MOV AX, DATA
        MOV DS, AX

        MOV AX, Z
        NEG AX
        MOV Z, AX

        MOV AX, X
        CMP AX, Y
        JGE DONE
        MOV AX, Y

    DONE2:
        CMP AX, Z
        JGE DONE2
        MOV AX, Z

    DONE3:
        MOV W, AX
    ENDING:
        MOV AH, 4CH
        INT 21H
CODE ENDS
END MAIN
