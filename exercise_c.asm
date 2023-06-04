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
        ADD ITEM, 0
        MOV AX, ITEM
        MOV ARRAY, AX

    INITIAL:
        MOV AX, ARRAY
        MOV CX, 99

        NM:
            ADD ITEM, 1
            MOV BX, OFFSET ARRAY
            ADD BX, 4
            MOV AX, ITEM
            ADD [BX], AX 
        loop NM

    ENDING:
        MOV AH, 4CH
        INT 21H

CODE ENDS
END MAIN
        
