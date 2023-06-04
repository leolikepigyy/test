DSEG SEGMENT
        x DW 1234H
        y DW 2345H
        z DW ?
        array DW 100(12h)
DSEG ENDS

SSEG SEGMENT
SSEG END

CSEG SEGMENT
            ASSUME CS: CSEG, DS:DSEG,
            SS: SSEG
        BEGIN:  
                MOV AX, DSEG
                MOV DS, AX

                MOV DX, OFFSET x
                MOV 
                ADD z,x
                ADD z.y

                MOV AH, 4CH
                INT 21H
CSEG ENDS
ENDS BEGIN
        