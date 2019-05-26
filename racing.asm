TITLE PROJECT: RACING CAR
.MODEL SMALL

.STACK 100H
.DATA

SCORE DW 0
START_X DW 2
DIM_X DW 45
DIM_Y DW 30
POS_X DW ?
PRESSED DW 0

POS_X3 DW ?
POS_Y3 DW ?

POS_Y1 DW ?
POS_Y2 DW ?
POSITION DW ?
COL DW 0
TEMP DW 0

.CODE

MAIN PROC
    MOV DX, @DATA
    MOV DS, DX
    CALL SET_DISPLAY_MODE
    CALL DRAW_SEPERATORS
    CALL DISPLAY_SCORE
    CALL GAME_CONTROL
    
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
    
    
;----------------------------------------------------------------------
SET_DISPLAY_MODE PROC NEAR
; sets display mode and draws boundary
    MOV AH, 0
    MOV AL, 04H; 320x200 4 color
    INT 10h
; select palette    
    MOV AH, 0BH
    MOV BH, 1
    MOV BL, 1   ;PALLETE 1- FOR CYAN, MAGENTA, WHITE
    INT 10H
; set bgd color
    MOV BH, 0
    MOV BL, 0; BLACK
    INT 10H
    
    RET
SET_DISPLAY_MODE ENDP
;-----------------------------------------------------------------------

DRAW_SEPERATORS PROC NEAR

    
    MOV DX, 66
    CALL DRAW_FULL_LINE
    MOV DX, 132
    CALL DRAW_FULL_LINE
   
    RET

DRAW_SEPERATORS ENDP
;-----------------------------------------------------------------------
DRAW_FULL_LINE PROC NEAR
  
      MOV AH,0CH
      MOV CX, 0
      MOV AL, 3
      FULL_LINING:
        INT 10H
        INC CX
        CMP CX, 320
        JL FULL_LINING

        RET
    

DRAW_FULL_LINE ENDP
;-----------------------------------------------------------------------
    
GAME_CONTROL PROC NEAR

  CALL DRAW_RECTANGLES_PRIMARY
  GAMING:
    CALL SHIFT_RECTANGLE
    CALL CHECK_FOR_COLLISION
    CALL CHECK_FOR_KEYBOARD
    CALL DELAY
    
    CMP COL, 0
    JE GAMING
    
    CALL LONG_DELAY


  RET
GAME_CONTROL ENDP

;-----------------------------------------------------------------------
DRAW_RECTANGLES_PRIMARY PROC NEAR
    
;DRAWING PLAYER RECTANGLE
    MOV AH, 0CH
    MOV AL, 1 ; CYAN
    MOV CX, START_X
   
    MOV DX, 84
    MOV POSITION, DX
    MOV POS_Y1, DX
    CALL DRAW_RECTANGLE
    MOV CX, 270
    MOV POS_X, CX
    MOV AL, 3  ;WHITE
    
    CALL DRAW_RECTANGLE
    SUB DX, 66
    MOV POS_Y2, DX
    CALL DRAW_RECTANGLE
    
    ADD DX, 132
    MOV POS_Y3, DX
    MOV POS_X3, 450
    ; MOV CX, POS_X3
    ; CALL DRAW_RECTANGLE

    RET
DRAW_RECTANGLES_PRIMARY ENDP
;-----------------------------------------------------------------------
DRAW_RECTANGLE PROC NEAR
    MOV AH, 0CH
    MOV BX, 0
    DR_OUT:
      MOV BL, 0
      
        DR_IN:
            
            INT 10H
            INC CX
            INC BL
        
            CMP BL, BYTE PTR DIM_X
            JL DR_IN
      
        INC DX
        SUB CX, DIM_X
        INC BH
        CMP BH, BYTE PTR DIM_Y
        JL DR_OUT
        SUB DX, DIM_Y

    RET
DRAW_RECTANGLE ENDP



;-----------------------------------------------------------------------

SHIFT_RECTANGLE PROC NEAR
    
    MOV CX, POS_X
    DEC CX
    MOV DX, POS_Y1
    MOV AL, 3
    CALL DRAW_COLUMN    
    MOV AL, 0
    MOV CX, POS_X
    ADD CX, DIM_X
    MOV DX, POS_Y1
    CALL DRAW_COLUMN 
 
    MOV CX, POS_X
    DEC CX
    MOV DX, POS_Y2
    MOV AL, 3
    CALL DRAW_COLUMN    
    MOV AL, 0
    MOV CX, POS_X
    ADD CX, DIM_X
    MOV DX, POS_Y2
    CALL DRAW_COLUMN  
  
    MOV CX, POS_X3
    DEC CX
    MOV DX, POS_Y3
    MOV AL, 3
    CALL DRAW_COLUMN    
    MOV AL, 0
    MOV CX, POS_X3
    ADD CX, DIM_X
    MOV DX, POS_Y3
    CALL DRAW_COLUMN
    DEC POS_X3
    
    CMP POS_X3, -46
    JG SR_CONT
    CALL DOWN_SHIFT_3
    MOV POS_X3, 320
    
    SR_CONT:    
    
    DEC POS_X
    CMP POS_X, -46
    JG SR_RET
    CALL DOWN_SHIFT
    MOV POS_X, 320
    
    SR_RET:
    
    RET
    
SHIFT_RECTANGLE ENDP
;-----------------------------------------------------------------------

DRAW_COLUMN PROC NEAR
    CMP CX, 0
    JL DC_RET
    CMP CX, 320
    JG DC_RET
    
    MOV AH, 0CH
    MOV BX, 0
    COLUMNING:
        INT 10H
        INC DX
        INC BX
        CMP BX, DIM_Y
        JL COLUMNING

    DC_RET:
    RET
DRAW_COLUMN ENDP


;-----------------------------------------------------------------------
DELAY PROC NEAR
    MOV CX, 0
    MOV DX, 5000
    MOV AH, 86H
    INT 15H
  
    RET
DELAY ENDP

;-----------------------------------------------------------------------
DOWN_SHIFT PROC NEAR
    ADD POS_Y1, 66
    ADD POS_Y2, 66
    CMP POS_Y1, 200
    JL DS_CONT
    MOV POS_Y1, 18
    JMP DS_RET
    
    DS_CONT:
    CMP POS_Y2, 200
    JL DS_RET
    MOV POS_Y2, 18
    
    DS_RET:
    ADD SCORE, 2
    CALL DISPLAY_SCORE
    RET
DOWN_SHIFT ENDP
;-------------------------------------------------------------
DOWN_SHIFT_3 PROC NEAR

    ;THIS PART IS TO RANDOMIZE MOVEMENT OF CAR 3
    MOV DX, SCORE
    ADD DX, PRESSED
    SHR DX, 1
    JNP DS3_DOWN
    JC DS3_RET
    ;GOT THE RANDOMIZED DECISION
    DS3_UP:
    SUB POS_Y3, 66
    CMP POS_Y3, 0
    JG DS3_RET
    MOV POS_Y3, 150
    JMP DS3_RET
    
    DS3_DOWN:
    ADD POS_Y3, 66
    CMP POS_Y3, 200
    JL DS3_RET
    MOV POS_Y3, 18
    
    DS3_RET:
    ADD SCORE, 1
    CALL DISPLAY_SCORE
    RET
    DOWN_SHIFT_3 ENDP

;-----------------------------------------------------------------------

CHECK_FOR_KEYBOARD PROC NEAR
    CMP COL, 0
    JNE CFK_RET    

    MOV AH, 6H
    MOV DL, 0FFH
    INT 21H
    JZ CFK_RET
    CMP AL, 72
    JNE CFK_CONT
    
    CALL UPSHIFT_PLAYER
    
    CFK_CONT:
    CMP AL, 80
    JNE CFK_RET
    
    CALL DOWNSHIFT_PLAYER
    
    CFK_RET:
    RET
    CHECK_FOR_KEYBOARD ENDP

;-----------------------------------------------------------------------
CHECK_FOR_COLLISION PROC NEAR
    CMP COL, 0
    JNE CFC_RET
    
    MOV BX, POS_Y1
    CMP POSITION, BX
    JE CFC_CONT
    MOV BX, POS_Y2
    CMP POSITION, BX
    JNE CFC_NEXT
    
    CFC_CONT:
    
    MOV BX, START_X
    SUB BX, DIM_X
    CMP POS_X, BX
    JL CFC_NEXT
    
    MOV BX, START_X
    ADD BX, DIM_X
    CMP POS_X, BX
    JG CFC_NEXT
    
    MOV COL, 1
    CALL DISPLAY_GAME_OVER
    JMP CFC_RET
    
    CFC_NEXT:
    MOV BX, POS_Y3
    CMP POSITION, BX
    JNE CFC_RET
    
    MOV BX, START_X
    SUB BX, DIM_X
    CMP POS_X3, BX
    JL CFC_RET
    
    MOV BX, START_X
    ADD BX, DIM_X
    CMP POS_X3, BX
    JG CFC_RET
    
    MOV COL, 1
    CALL DISPLAY_GAME_OVER
    
    CFC_RET:
    RET
CHECK_FOR_COLLISION ENDP

;-----------------------------------------------------------------------
UPSHIFT_PLAYER PROC NEAR
    INC PRESSED
    CMP POSITION, 66
    JL USP_RET
    
    MOV CX, START_X
    MOV DX, POSITION
    MOV AL, 0
    CALL DRAW_RECTANGLE  ;ERASE FROM CURRENT
    SUB POSITION, 66
    MOV CX, START_X
    MOV DX, POSITION
    MOV AL, 1
    CALL DRAW_RECTANGLE
    
    USP_RET:
    RET
UPSHIFT_PLAYER ENDP
;-----------------------------------------------------------------------
DOWNSHIFT_PLAYER PROC NEAR
    DEC PRESSED
    CMP POSITION, 132
    JG DSP_RET

    MOV CX, START_X
    MOV DX, POSITION
    MOV AL, 0
    CALL DRAW_RECTANGLE  ;ERASE FROM CURRENT
    ADD POSITION, 66
    MOV CX, START_X
    MOV DX, POSITION
    MOV AL, 1
    CALL DRAW_RECTANGLE
    
    DSP_RET:
    RET
DOWNSHIFT_PLAYER ENDP
;-----------------------------------------------------------------------








;-----------------------------------------------------------------------
DISPLAY_GAME_OVER PROC NEAR
   
    MOV AH,2
    MOV BH, 0
    MOV DH, 24
    MOV DL, 6
    INT 10H
    MOV AH, 9
    MOV AL, 'O'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 24
    MOV DL, 7
    INT 10H
    MOV AH, 9
    MOV AL, 'V'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 24
    MOV DL, 8
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 24
    MOV DL, 9
    INT 10H
    MOV AH, 9
    MOV AL, 'R'
    MOV BL, 3
    MOV CX, 1
    INT 10H

    RET
DISPLAY_GAME_OVER ENDP
;-----------------------------------------------------------------------

DISPLAY_SCORE PROC NEAR

    CMP COL, 0
    JE DSCORE_CONT
    JMP DSCORE_RET
    
    DSCORE_CONT:
    MOV AH,2
    MOV BH, 0
    MOV DH, 0
    MOV DL, 6
    INT 10H
    
    MOV DX, 0
    MOV AX, SCORE
    MOV TEMP, 10000
    DIV TEMP
    MOV TEMP, DX
    
    MOV AH, 9
    ADD AL, '0'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 0
    MOV DL, 7
    INT 10H
    
    MOV DX, 0
    MOV AX, SCORE
    MOV TEMP, 1000
    DIV TEMP
    MOV TEMP, DX
    
    MOV AH, 9
    ADD AL, '0'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 0
    MOV DL, 8
    INT 10H
    
    MOV DX, 0
    MOV AX, SCORE
    MOV TEMP, 100
    DIV TEMP
    MOV TEMP, DX
    
    MOV AH, 9
    MOV BL, 3
    ADD AL, '0'
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 0
    MOV DL, 9
    INT 10H
    
    MOV DX, 0
    MOV AX, TEMP
    MOV TEMP, 10
    DIV TEMP
    MOV TEMP, DX
    
    MOV AH, 9
    ADD AL, '0'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 0
    MOV DL, 10
    INT 10H
    
    
    MOV AX, TEMP
    MOV AH, 9
    ADD AL, '0'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    
   DSCORE_RET:
    RET
DISPLAY_SCORE ENDP

;-----------------------------------------------------------------------
LONG_DELAY PROC NEAR

    MOV CX, 0FFFH
    MOV DX, 0FFFFH
    MOV AH, 86H
    INT 15H

    RET
LONG_DELAY ENDP
;-----------------------------------------------------------------------

END MAIN
    
