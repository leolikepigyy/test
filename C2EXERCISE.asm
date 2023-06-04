DATA SEGMENT
    ARRAY DB 100 DUP(?)
    ITEM DB 1
DATA ENDS

STACKSEG SEGMENT
STACKSEG ENDS

CODE SEGMENT
    ASSUME DS:DATA,SS:STACKSEG,CS:CODE

    MAIN:
        MOV AX, DATA
        MOV DS, AX

        MOV si, OFFSET ARRAY
        MOV di, 0

        MOV CX, 100
    
    NM:
        MOV [si], di
        INC si
        INC di
    loop NM

        MOV AH, 4CH
        INT 21H
CODE ENDS
END MAIN