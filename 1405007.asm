.Model SMALL
draw_row Macro x
    Local l1
; draws a line in row x from col 10 to col 300
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, 10
    MOV DX, x
L1: INT 10h
    INC CX
    CMP CX, 301
    JL L1
    EndM
    

draw_col Macro y
    Local l2
; draws a line col y from row 10 to row 189
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, y
    MOV DX, 10
L2: INT 10h
    INC DX
    CMP DX, 190
    JL L2
    EndM
    
clkrow Macro x
    Local al1
; draws a line in row x from col 10 to col 300
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, 107
    MOV DX, x
AL1: INT 10h
    INC CX
    CMP CX, 177
    JL AL1
    EndM
    
clkcol Macro y
    Local al2
; draws a line col y from row 10 to row 189
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, y
    MOV DX, 100
AL2: INT 10h
    INC DX
    CMP DX, 115
    JL AL2
    EndM
    
clkcol1 Macro y
    Local al22
; draws a line col y from row 10 to row 189
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, y
    MOV DX, 132
    AL22: INT 10h
    INC DX
    CMP DX, 147
    JL AL22
    EndM 
    
draw_rGrid Macro x;For drawing Grid row
    Local l3
    ; draws a line in row x from col 85 to col 205
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, 85
    MOV DX, x
L3: INT 10h
    INC CX
    CMP CX, 205
    JL L3
    EndM
    
draw_cGrid Macro y; For drawing Grid Column
    Local l4
    ; draws a line col y from row 30 to row 150
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, y
    MOV DX, 30
L4: INT 10h
    INC DX
    CMP DX, 150
    JL L4
    EndM
    
draw_rWinning Macro x;AFTER WINNING ROW LINE
    Local l5
    local l6
    Local l7
    ; draws a line in row x from col 85 to col 205
    MOV AH, 0CH
    MOV AL, 15;white color
    MOV CX, 85
    MOV DX, x
L5: INT 10h
    INC CX
    CMP CX, 205
    JL L5
    
    MOV AH, 0CH
    MOV AL, 15;white color
    MOV CX, 85
    MOV DX, x-1
L6: INT 10h
    INC CX
    CMP CX, 205
    JL L6
    
    MOV AH, 0CH
    MOV AL, 15;white color
    MOV CX, 85
    MOV DX, x+1
L7: INT 10h
    INC CX
    CMP CX, 205
    JL L7
    EndM
    
draw_cWinning Macro y;AFTER WINNING Column LINE
    Local l8
    local l9
    Local l10
    ; draws a line in col y for row 30 to row 150
    MOV AH, 0CH
    MOV AL, 15;WHITE COLOR
    MOV CX, y
    MOV DX, 30
L8: INT 10h
    INC DX
    CMP DX, 150
    JL L8
    
    MOV AH, 0CH
    MOV AL, 15;WHITE COLOR
    MOV CX, y-1
    MOV DX, 30
L9: INT 10h
    INC DX
    CMP DX, 150
    JL L9
    
    MOV AH, 0CH
    MOV AL, 15;WHITE COLOR
    MOV CX, y+1
    MOV DX, 30
L10: INT 10h
    INC DX
    CMP DX, 150
    JL L10
    EndM
    
extt1 Macro x
    Local ll1
    ; draws a line in row x from col 280 to col 300
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, 250
    MOV DX, x
LL1: INT 10h
    INC CX
    CMP CX, 301
    JL LL1
    EndM
    
extt2 Macro y
    Local ll2
; draws a line in row x from col 10 to col 300
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, y
    MOV DX, 155
LL2: INT 10h
    INC DX
    CMP DX, 189
    JL LL2
    EndM
    
extt3 Macro y
    Local ll3
; draws a line in row x from col 10 to col 300
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, y
    MOV DX, 170
LL3: INT 10h
    INC DX
    CMP DX, 189
    JL LL3
    EndM
    
point11 MACRO x
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 35
    INT 10H
    MOV AH, 9
    MOV AL, x
    MOV BL, 3
    MOV CX, 1
    INT 10H
    ENDM
    
point12 MACRO x
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 36
    INT 10H
    MOV AH, 9
    MOV AL, x
    MOV BL, 3
    MOV CX, 1
    INT 10H
    ENDM
    
point21 MACRO x
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 35
    INT 10H
    MOV AH, 9
    MOV AL, x
    MOV BL, 3
    MOV CX, 1
    INT 10H
    ENDM
    
point22 MACRO x
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 36
    INT 10H
    MOV AH, 9
    MOV AL, x
    MOV BL, 3
    MOV CX, 1
    INT 10H
    ENDM
    
draw21 MACRO x
    MOV AH,2
    MOV BH, 0
    MOV DH, 07
    MOV DL, 35
    INT 10H
    MOV AH, 9
    MOV AL, x
    MOV BL, 3
    MOV CX, 1
    INT 10H
    ENDM
    
draw22 MACRO x
    MOV AH,2
    MOV BH, 0
    MOV DH, 07
    MOV DL, 36
    INT 10H
    MOV AH, 9
    MOV AL, x
    MOV BL, 3
    MOV CX, 1
    INT 10H
    ENDM
    
.Stack 100h    
org 100h
.Data
a dw 100
b dw 100
c dw 100
d dw 100
e dw 100
f dw 100
g dw 100
h dw 100
x dw 100
y dw 0
z dw 0
co dw 0
co1 dw 0
drkr1 dw 0
drkr2 dw 0
count db 100
tmp1 db 100
tmp2 db 100
tmp3 db 100
tmp22 dw 100
dr1 db 0
dr2 db 0
po1 db 0
po2 db 0
po11 db 0
po22 db 0
tm DW 0
ara db 9 DUP(' ')
new_timer_vec   dw  ?,?
old_timer_vec   dw  ?,?
timer_flag  db  0
vel_x       dw  1
vel_y       dw  1
.Code

set_display_mode Proc;GRID DRAWING
; sets display mode and draws boundary
    MOV AH, 0
    MOV AL, 04h; 320x200 4 color
    INT 10h
; select palette    
    MOV AH, 0BH
    MOV BH, 1
    MOV BL, 1
    INT 10h
; set bgd color
    MOV BH, 0;
    MOV BL, 0; background er color
    INT 10h
; draw boundary
    draw_row 10
    draw_row 189
    draw_col 10
    draw_col 300
; DRAW GRID    
    draw_rGrid 70
    draw_rGrid 71
    draw_rGrid 69
    draw_rGrid 110
    draw_rGrid 111
    draw_rGrid 109
    draw_cGrid 125
    draw_cGrid 126
    draw_cGrid 124
    draw_cGrid 165
    draw_cGrid 166
    draw_cGrid 164
    CALL EXT
    CALL BK
    
    extt1 170

    extt1 155
    extt2 250
    RET
set_display_mode EndP

set_main Proc;MAIN MENU
; sets display mode and draws boundary
    MOV AH, 0
    MOV AL, 04h; 320x200 4 color
    INT 10h
; select palette    
    MOV AH, 0BH
    MOV BH, 1
    MOV BL, 1
    INT 10h
; set bgd color
    MOV BH, 0;
    MOV BL, 0; background er color
    INT 10h
; draw boundary
    draw_row 10
    draw_row 189
    draw_col 10
    draw_col 300
    
    CALL TicTac

    RET
    set_main EndP

DRAWNN PROC NEAR
   
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 17
    INT 10H
    MOV AH, 9
    MOV AL, 'D'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 18
    INT 10H
    MOV AH, 9
    MOV AL, 'R'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 19
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 20
    INT 10H
    MOV AH, 9
    MOV AL, 'W'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'N'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    RET
DRAWNN ENDP

Ply1 PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 13
    INT 10H
    MOV AH, 9
    MOV AL, 'P'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'L'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 16
    INT 10H
    MOV AH, 9
    MOV AL, 'Y'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 17
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 18
    INT 10H
    MOV AH, 9
    MOV AL, 'R'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 19
    INT 10H
    MOV AH, 9
    MOV AL, '1'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 20
    INT 10H
    MOV AH, 9
    MOV AL, ' '
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'W'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 22
    INT 10H
    MOV AH, 9
    MOV AL, 'I'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 23
    INT 10H
    MOV AH, 9
    MOV AL, 'N'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 24
    INT 10H
    MOV AH, 9
    MOV AL, 'S'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    RET
    
Ply1 ENDP


Ply11 PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 13
    INT 10H
    MOV AH, 9
    MOV AL, 'Y'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'O'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, 'U'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
   
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'W'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 22
    INT 10H
    MOV AH, 9
    MOV AL, 'I'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 23
    INT 10H
    MOV AH, 9
    MOV AL, 'N'
    MOV BL, 3
    MOV CX, 1
    INT 10H

    RET
    
    Ply11 ENDP
Ply2 PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 13
    INT 10H
    MOV AH, 9
    MOV AL, 'P'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'L'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 16
    INT 10H
    MOV AH, 9
    MOV AL, 'Y'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 17
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 18
    INT 10H
    MOV AH, 9
    MOV AL, 'R'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 19
    INT 10H
    MOV AH, 9
    MOV AL, '2'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 20
    INT 10H
    MOV AH, 9
    MOV AL, ' '
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'W'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 22
    INT 10H
    MOV AH, 9
    MOV AL, 'I'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 23
    INT 10H
    MOV AH, 9
    MOV AL, 'N'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 24
    INT 10H
    MOV AH, 9
    MOV AL, 'S'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    RET
Ply2 ENDP

Ply22 PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 13
    INT 10H
    MOV AH, 9
    MOV AL, 'C'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'P'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, 'U'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'W'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 22
    INT 10H
    MOV AH, 9
    MOV AL, 'I'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 23
    INT 10H
    MOV AH, 9
    MOV AL, 'N'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 24
    INT 10H
    MOV AH, 9
    MOV AL, 'S'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    RET
    Ply22 ENDP

Player1 PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 27
    INT 10H
    MOV AH, 9
    MOV AL, 'P'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 28
    INT 10H
    MOV AH, 9
    MOV AL, 'L'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 29
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 30
    INT 10H
    MOV AH, 9
    MOV AL, 'Y'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 31
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 32
    INT 10H
    MOV AH, 9
    MOV AL, 'R'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 33
    INT 10H
    MOV AH, 9
    MOV AL, '1'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    RET
Player1 ENDP


Player11 PROC
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 31
    INT 10H
    MOV AH, 9
    MOV AL, 'Y'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 32
    INT 10H
    MOV AH, 9
    MOV AL, 'O'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 03
    MOV DL, 33
    INT 10H
    MOV AH, 9
    MOV AL, 'U'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    RET
    Player11 ENDP

Player2 PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 27
    INT 10H
    MOV AH, 9
    MOV AL, 'P'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 28
    INT 10H
    MOV AH, 9
    MOV AL, 'L'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 29
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 30
    INT 10H
    MOV AH, 9
    MOV AL, 'Y'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 31
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 32
    INT 10H
    MOV AH, 9
    MOV AL, 'R'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 33
    INT 10H
    MOV AH, 9
    MOV AL, '2'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    RET
Player2 ENDP

Dr PROC
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 07
    MOV DL, 30
    INT 10H
    MOV AH, 9
    MOV AL, 'D'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 07
    MOV DL, 31
    INT 10H
    MOV AH, 9
    MOV AL, 'R'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 07
    MOV DL, 32
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 07
    MOV DL, 33
    INT 10H
    MOV AH, 9
    MOV AL, 'W'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    RET
Dr ENDP

Player22 PROC
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 31
    INT 10H
    MOV AH, 9
    MOV AL, 'C'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 32
    INT 10H
    MOV AH, 9
    MOV AL, 'P'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 33
    INT 10H
    MOV AH, 9
    MOV AL, 'U'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    RET
    Player22 ENDP

lengg PROC
    MOV CX,9
    MOV DL,0
    LEA DI,ara
    alop:
        CMP ara[DI],0
        JE alop1
        INC DL
        alop1:
            INC DI
         LOOP alop
    MOV AH,0
    MOV AL,DL
    CBW
    MOV BL,2
    IDIV BL
    RET
lengg ENDP


tttt Proc
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 12
    INT 10H
    MOV AH, 9
    MOV AL, 'T'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 13
    INT 10H
    MOV AH, 9
    MOV AL, 'I'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'C'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, ' '
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 16
    INT 10H
    MOV AH, 9
    MOV AL, 'T'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 17
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 18
    INT 10H
    MOV AH, 9
    MOV AL, 'C'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 19
    INT 10H
    MOV AH, 9
    MOV AL, ' '
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 20
    INT 10H
    MOV AH, 9
    MOV AL, 'T'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'O'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 05
    MOV DL, 22
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    RET
tttt ENDP

EXT PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 32
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
   
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 33
    INT 10H
    MOV AH, 9
    MOV AL, 'X'
    MOV BL, 3
    MOV CX, 1
    INT 10H
  
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 34
    INT 10H
    MOV AH, 9
    MOV AL, 'I'
    MOV BL, 3
    MOV CX, 1
    INT 10H   
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 22
    MOV DL, 35
    INT 10H
    MOV AH, 9
    MOV AL, 'T'
    MOV BL, 3
    MOV CX, 1
    INT 10H 
    RET
EXT ENDP

BK PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 20
    MOV DL, 32
    INT 10H
    MOV AH, 9
    MOV AL, 'B'
    MOV BL, 3
    MOV CX, 1
    INT 10H 
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 20
    MOV DL, 33
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H 
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 20
    MOV DL, 34
    INT 10H
    MOV AH, 9
    MOV AL, 'C'
    MOV BL, 3
    MOV CX, 1
    INT 10H 
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 20
    MOV DL, 35
    INT 10H
    MOV AH, 9
    MOV AL, 'K'
    MOV BL, 3
    MOV CX, 1
    INT 10H 
    RET
BK ENDP

TicTac PROC
    clkrow 100 
    clkrow 115
    clkcol 107
    clkcol 177
    clkrow 132
    clkrow 147
    
    clkcol1 107
    clkcol1 177
    
    extt1 170
    extt3 250
    CALL tttt
    CALL EXT
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 13
    INT 10H
    MOV AH, 9
    MOV AL, 'M'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'A'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, 'I'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 16
    INT 10H
    MOV AH, 9
    MOV AL, 'N'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 17
    INT 10H
    MOV AH, 9
    MOV AL, ' '
    MOV BL, 3
    MOV CX, 1
    INT 10H

    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 19
    INT 10H
    MOV AH, 9
    MOV AL, 'M'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 20
    INT 10H
    MOV AH, 9
    MOV AL, 'E'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'N'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 10
    MOV DL, 22
    INT 10H
    MOV AH, 9
    MOV AL, 'U'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'M'
    MOV BL, 3
    MOV CX, 1
    INT 10H
   
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, 'a'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 16
    INT 10H
    MOV AH, 9
    MOV AL, 'n'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 17
    INT 10H
    MOV AH, 9
    MOV AL, 'V'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 18
    INT 10H
    MOV AH, 9
    MOV AL, 's'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 19
    INT 10H
    MOV AH, 9
    MOV AL, 'M'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 20
    INT 10H
    MOV AH, 9
    MOV AL, 'a'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 13
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'n'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    CALL Manvcpu
    RET
TicTac ENDP

Manvcpu PROC
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 14
    INT 10H
    MOV AH, 9
    MOV AL, 'M'
    MOV BL, 3
    MOV CX, 1
    INT 10H
   
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 15
    INT 10H
    MOV AH, 9
    MOV AL, 'a'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 16
    INT 10H
    MOV AH, 9
    MOV AL, 'n'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 17
    INT 10H
    MOV AH, 9
    MOV AL, 'V'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 18
    INT 10H
    MOV AH, 9
    MOV AL, 's'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 19
    INT 10H
    MOV AH, 9
    MOV AL, 'C'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 20
    INT 10H
    MOV AH, 9
    MOV AL, 'P'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    
    MOV AH,2
    MOV BH, 0
    MOV DH, 17
    MOV DL, 21
    INT 10H
    MOV AH, 9
    MOV AL, 'U'
    MOV BL, 3
    MOV CX, 1
    INT 10H
    RET
    Manvcpu ENDP

drawing_O Proc
    Push AX
    Push BX
 
    MOV a,AX
    MOV b,AX
    MOV c,BX
    MOV d,BX
    SUB a,12
    ADD b,12
    SUB c,12
    ADD d,12
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, a
L5: INT 10h
    INC CX
    CMP CX, d
    JLE L5
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, b
L6: INT 10h
    INC CX
    CMP CX, d
    JLE L6
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, a
L7: INT 10h
    INC DX
    CMP DX, b
    JLE L7
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, d
    MOV DX, a
L8: INT 10h
    INC DX
    CMP DX, b
    JLE L8
    
    INC a
    Dec b
    INC c
    Dec d
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, a
L9: INT 10h
    INC CX
    CMP CX, d
    JLE L9
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, b
L10: INT 10h
    INC CX
    CMP CX, d
    JLE L10
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, a
L11: INT 10h
    INC DX
    CMP DX, b
    JLE L11
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, d
    MOV DX, a
L12: INT 10h
    INC DX
    CMP DX, b
    JLE L12
    
    INC a
    Dec b
    INC c
    Dec d
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, a
L13: INT 10h
    INC CX
    CMP CX, d
    JLE L13
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, b
L15: INT 10h
    INC CX
    CMP CX, d
    JLE L15
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, c
    MOV DX, a
L16: INT 10h
    INC DX
    CMP DX, b
    JLE L16
    
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, d
    MOV DX, a
L14: INT 10h
    INC DX
    CMP DX, b
    JLE L14
    
    POP BX
    POP AX
    RET
    
drawing_O ENDP
    
 
drawing_X Proc
    Push AX
    Push BX
    
    MOV a,AX
    MOV c,AX
    MOV f,Bx
    MOV b,BX
    SUB a,13;cross starting point
    SUB b,13
    ADD c,12;cross ending point
    ADD f,12
    
    MOV AX,a
    MOV h,AX

    MOV AX,b
    MOV d,AX
    Add b,5
lop1:
    MOV e,0
lop2:
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, d
    MOV DX, a
L111: 
    INT 10h
    INC CX
    CMP CX, b
    JLE L111
    INC a
    INC e
    CMP e,5
    JL lop2
     
    MOV AX,b
    MOV d,AX
    ADD b,5
    MOV DX,a
    CMP DX,c
    JL lop1
    
    MOV AX,h
    MOV a,AX
     
    MOV AX,f
    MOV g,AX
    SUB f,5
lop3:
    MOV e,0
lop4:
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, f
    MOV DX, a
L112: 
    INT 10h
    INC CX
    CMP CX, g
    JLE L112
    INC a
    INC e
    CMP e,5
    JL lop4
     
    MOV AX,f
    MOV g,AX
    SUB f,5
    MOV DX,a
    CMP DX,c
    JL lop3
    
    POP BX
    POP AX
    RET
     
drawing_X ENDP

timmer Proc
    MOV tm,0
    MOV tm,50000
 lupp:
    DEC tm
    CMP tm,0
    JNE lupp
timmer ENDP
    

; WINNING CROSS DAN theke Bam
cross1 Proc
    MOV AX,2
    INT 33H
    MOV a,30
    MOV b,85
    MOV c,150
    MOV AX,b
    MOV d,AX
    Add b,5
lopp1:
    MOV e,0
lopp2:
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, d
    MOV DX, a
Lo111: 
    INT 10h
    INC CX
    CMP CX, b
    JLE Lo111
    INC a
    INC e
    CMP e,5
    JL lopp2
     
    MOV AX,b
    MOV d,AX
    ADD b,5
    MOV DX,a
    CMP DX,c
    JL lopp1
    RET
cross1 ENDP

;WINNING CROSS BAM THEKE DAN
cross2 Proc
    MOV AX,2
    INT 33H
    MOV a,30
    MOV b,205
    MOV c,150
    MOV AX,b
    MOV d,AX
    Sub b,5
lopp11:
    MOV e,0
lopp12:
    MOV AH, 0CH
    MOV AL, 15
    MOV CX, b
    MOV DX, a
Lo1111: 
    INT 10h
    INC CX
    CMP CX, d
    JLE Lo1111
    INC a
    INC e
    CMP e,5
    JL lopp12
     
    MOV AX,b
    MOV d,AX
    SUB b,5
    MOV DX,a
    CMP DX,c
    JL lopp11
    RET
cross2 ENDP

manVsman Proc
    ; MAKING ALL THE ELEMENTS OF ara "ZERO'    
    LEA SI,ara
    MOV a,0
 ll1:
    MOV ara[SI],0
    INC SI
    INC a
    CMP a,9
    JL ll1
   
    ; reset mouse and get its status:
    mov ax, 0
    int 33h
    cmp ax, 0
    
    MOV Al,po1
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    point11 tmp1
    point12 tmp2
    
    MOV Al,po2
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    point21 tmp1
    point22 tmp2
    
    MOV Al,dr1
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    draw21 tmp1
    draw22 tmp2
    
M: 
    ;display mouse cursor:
    mov ax, 1
    int 33h
    MOV BX,0
    MOV AX,3
    INT 33H
    shr CX,1
    CMP BX,1
    JNE M

;ROW WINNING FUNCTION    
    LEA SI,ara
chk1:
    CMP ara[SI],0
    JNE chk2
chk5:
    CMP ara[SI+3],0
    JNE chk3
chk6:
    CMP ara[SI+6],0
    JNE chk4
    bb:
    JMP Mahi
chk2:
    MOV BL,ara[SI]
    CMP BL,ara[SI+1]
    JNE chk5
    CMP BL,ara[SI+2]
    JNE chk5
    JMP rslt1
chk3:
    MOV BL,ara[SI+3]
    CMP BL,ara[SI+4]
    JNE chk6
    CMP BL,ara[SI+5]
    JNE chk6
    JMP rslt2
chk4:
    MOV BL,ara[SI+6]
    CMP BL,ara[SI+7]
    JNE bb
    CMP BL,ara[SI+8]
    JNE bb
    JMP rslt3
    
rslt1:
    MOV AX,2
    INT 33H
    draw_rWinning 49
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI],1
    JE ssd
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    bb1:
    JMP M
    ssd:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
    ;JMP bb1
rslt2: 
    MOV AX,2
    INT 33H
    draw_rWinning 90
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+3],1
    JE ssd1
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    ;JMP M
    ssd1:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
    ;JMP M
rslt3:
    MOV AX,2
    INT 33H
    draw_rWinning 130
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+6],1
    JE ssd2
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    bbb1:
    JMP M
    ssd2:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
;COLUMN WINNING FUNCTION
Mahi:
    LEA SI,ara
chk11:
    CMP ara[SI],0
    JNE chk12
chk15:
    CMP ara[SI+1],0
    JNE chk13
chk16:
    CMP ara[SI+2],0
    JNE chk14
    bb11:
    JMP Mahi1
chk12:
    MOV BL,ara[SI]
    CMP BL,ara[SI+3]
    JNE chk15
    CMP BL,ara[SI+6]
    JNE chk15
    JMP rslt11
chk13:
    MOV BL,ara[SI+1]
    CMP BL,ara[SI+4]
    JNE chk16
    CMP BL,ara[SI+7]
    JNE chk16
    JMP rslt12
chk14:
    MOV BL,ara[SI+2]
    CMP BL,ara[SI+5]
    JNE bb11
    CMP BL,ara[SI+8]
    JNE bb11
    JMP rslt13
    
rslt11:
    MOV AX,2
    INT 33H
    draw_cWinning 104
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI],1
    JE ssd3
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    ssd3:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
rslt12: 
    MOV AX,2
    INT 33H
    draw_cWinning 145
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+1],1
    JE ssd4
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    ssd4:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
rslt13:
    MOV AX,2
    INT 33H
    draw_cWinning 185
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+2],1
    JE ssd5
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    bbb2:
    JMP M
    ssd5:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
    
mahi1:
    LEA SI,ara
chk111:
    CMP ara[SI],0
    JNE chk112
chk115:
    CMP ara[SI+2],0
    JNE chk113
    bbb111:
    JMP mahi2
chk112:
    MOV BL,ara[SI]
    CMP BL,ara[SI+4]
    JNE chk115
    CMP BL,ara[SI+8]
    JNE chk115
    JMP rslt111
chk113:
    MOV BL,ara[SI+2]
    CMP BL,ara[SI+4]
    JNE bbb111
    CMP BL,ara[SI+6]
    JNE bbb111
    JMP rslt112
    
rslt111:
    CALL cross1
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+4],1
    JE ssd6
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    ssd6:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
rslt112: 
    CALL cross2
    ;CALL DISPLAY_GAME_OVER    
    LEA SI,ara
    CMP ara[SI+4],1
    JE ssd7
    CALL ply2
    INC po2
    MOV AL,po2
    ;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi
    bbb3:
    JMP M
    ssd7:
    CALL Ply1
    INC po1
    MOV AL,po1
    ;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi
llll1:
    CALL DRAWNN
    INC dr1
    MOV Al,dr1
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    draw21 tmp1
    draw22 tmp2
    JMP exi
;draw   
mahi2:
  MOV co,0
  LEA SI,ara
  llll:
    CMP ara[SI],0
    JE N
    INC SI
    INC co
    CMP co,9
    JL llll
    CMP co,9
    JE llll1
    
    
;CALL colWinning
;FIRST ROW MOUSE CLICK

;ara[0]    
N:
    CMP CX,85
    JLE blk22
N1:
    CMP CX,124
    JGE N211
    CMP DX,30 
    JLE blk22
N2:
    CMP DX,69
    JGE N111
    
    LEA SI,ara
    CMP ara[SI],0
    JNE blk2
    MOV y,0
    MOV z,0
llp1:
    CMP ara[SI],0
    JNE llp2
    INC SI
    INC y
    CMP y,9
    JL llp1
    JMP llp3
N211:
    JMP N3   
blk22:
    JMP blk2
llp2:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp1 
llp3:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,49
    MOV BX,104
    CMP x,1
    JE xp1
    CALL drawing_O
    LEA SI,ara
    MOV ara[SI],1
    JMP M
xp1:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI],2
    JMP M
N111:
    JMP N10
blk2:
    JMP M
;ara[1]   
N3:
    CMP CX,126 
    JLE blk2
N4:
    CMP CX,164
    JGE N212
    CMP DX,30
    JLE blk2
N5:
    CMP DX,69
    JGE N112
    LEA SI,ara
    CMP ara[SI+1],0
    JNE blk1
    MOV y,0
    MOV z,0
llp4:
    CMP ara[SI],0
    JNE llp5
    INC SI
    INC y
    CMP y,9
    JL llp4
    JMP llp6
N212:
    JMP N6
llp5:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp4 
llp6:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    mov ax, 2
    int 33h
    MOV AX,49
    MOV BX,145
    CMP x,1
    JE xp2
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+1],1
    JMP M
xp2:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+1],2
    blk1:
    JMP M
N112:
    JMP N13    
;ara[2]
N6: 
    CMP CX,166
    JLE blk1
N7:
    CMP CX,205
    JGE exi
    CMP DX,30
    JLE blk1
N8:
    CMP DX,69
    JGE N1133
    LEA SI,ara
    CMP ara[SI+2],0
    JNE blk1
    MOV y,0
    MOV z,0
llp7:
    CMP ara[SI],0
    JNE llp8
    INC SI
    INC y
    CMP y,9
    JL llp7
    JMP llp9
N1133:
    JMP N113
exi:
    MOV AX,1
    INT 33H 
    MOV BX,0
    MOV AX,3
    INT 33H
    SHR CX,1
    CMP BX,1
    JNE exi
    CMP DX,155
    JL exi
    CMP DX,170
    JG exi1
    CMP CX,250
    JL exi
    CMP CX,300
    JG exi
    JMP againn
exi1:
    CMP DX,170
    JL exi
    CMP DX,189
    JG exi
    mov ah, 00
    mov al, 13h       ; set screen to 256 colors, 320x200 pixels. 
    int 10h
    MOV AH,4CH
    INT 21H
llp8:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp7 
llp9:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,49
    MOV BX,185
    CMP x,1
    JE xp3
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+2],1
    JMP M
xp3:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+2],2
    JMP blk1
N113:
    JMP N16    
; SECOND ROW MOUSE CLICK  
;ara[3]  
N10:
    CMP DX,71
    JLE bba
N11:
    CMP DX,109
    JGE N114; change korte hobe
    LEA SI,ara
    CMP ara[SI+3],0
    JNE blk12
    MOV y,0
    MOV z,0
llp10:
    CMP ara[SI],0
    JNE llp11
    INC SI
    INC y
    CMP y,9
    JL llp10
    JMP llp12

llp11:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp10 
llp12:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,90
    MOV BX,104
    CMP x,1
    JE xp4
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+3],1
    JMP blk11
bba:
    JMP blk12
xp4:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+3],2
    JMP blk11
N114:
    JMP N18  
blk12: 
    JMP EXIT 
;ara[4]
N13:
    CMP DX,71
    JLE blk11
N14:
    CMP DX,109
    JGE N115;change korte hobe
    LEA SI,ara
    CMP ara[SI+4],0
    JNE blk11
    MOV y,0
    MOV z,0
llp13:
    CMP ara[SI],0
    JNE llp14
    INC SI
    INC y
    CMP y,9
    JL llp13
    JMP llp15
llp14:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp13 
llp15:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,90
    MOV BX,145
    CMP x,1
    JE xp5
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+4],1
    JMP M
xp5:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+4],2
    blk11:
    JMP EXIT
N115:
    JMP N20    
;ara[5]
N16:
    CMP DX,71
    JLE blk3
N17:
    CMP DX,109
    JGE N116;change korte hobe
    LEA SI,ara
    CMP ara[SI+5],0
    JNE blk3
    MOV y,0
    MOV z,0
llp16:
    CMP ara[SI],0
    JNE llp17
    INC SI
    INC y
    CMP y,9
    JL llp16
    JMP llp18
llp17:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp16 
llp18:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,90
    MOV BX,185
    CMP x,1
    JE xp6
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+5],1
    JMP blk3
xp6:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+5],2
    blk3:
    JMP EXIT  
N116:
    JMP N22  
;THIRD ROW MOUSE CLICK
;ara[6]
N18:
    CMP DX,111
    JLE blk4
N19:
    CMP DX,150
    JGE blk4; change korte hobe
    LEA SI,ara
    CMP ara[SI+6],0
    JNE blk4
    MOV y,0
    MOV z,0
llp19:
    CMP ara[SI],0
    JNE llp20
    INC SI
    INC y
    CMP y,9
    JL llp19
    JMP llp21
llp20:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp19 
llp21:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,130
    MOV BX,104
    CMP x,1
    JE xp7
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+6],1
    JMP blk4
xp7:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+6],2
    blk4:
    JMP EXIT
    
;ara[7]
N20:
    CMP DX,111
    JLE blk5
N21:
    CMP DX,150
    JGE blk5;change korte hobe
    LEA SI,ara
    CMP ara[SI+7],0
    JNE blk5
    MOV y,0
    MOV z,0
llp22:
    CMP ara[SI],0
    JNE llp23
    INC SI
    INC y
    CMP y,9
    JL llp22
    JMP llp24
llp23:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp22 
llp24:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,130
    MOV BX,145
    CMP x,1
    JE xp8
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+7],1
    JMP blk5
xp8:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+7],2
    blk5:
    JMP EXIT
    
;ara[8]
N22:
    CMP DX,111
    JLE EXIT
N23:
    CMP DX,150
    JGE EXIT
    LEA SI,ara
    CMP ara[SI+8],0
    JNE EXIT
    MOV y,0
    MOV z,0
llp25:
    CMP ara[SI],0
    JNE llp26
    INC SI
    INC y
    CMP y,9
    JL llp25
    JMP llp27
llp26:
    INC SI
    INC y
    INC z
    CMP y,9
    JL llp25 
llp27:    
    MOV AX,z
    MOV AX,AX
    CWD
    MOV BX,2
    IDIV BX
    MOV x,DX
    MOV AX,2
    INT 33H
    MOV AX,130
    MOV BX,185
    CMP x,1
    JE xp9
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+8],1
    JMP EXIT
xp9:
    CALL drawing_X
    LEA SI,ara
    MOV ara[SI+8],2
EXIT: 
    JMP M 
  RET  
manVsman ENDP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; rand
rand PROC
    LEA SI,ara
    CMP ara[SI+4],0
    JNE strt1
    MOV AX,90
    MOV BX,145
    MOV ara[SI+4],2
    CALL drawing_X
    JMP M22
;strtd1:
;    CMP ara[SI],0
;    JNE strt1
;    MOV AX,49
;    MOV BX,104
;    MOV ara[SI],2
;    CALL drawing_X
;    JMP M22
strt1:
    CMP ara[SI],0
    JNE strt2
    strt333:
    CMP ara[SI+1],0
    JNE strt3111
    strt444:
    CMP ara[SI+2],0
    JNE strt4111
    strt555:
    CMP ara[SI+3],0
    JNE strt5111
    strt666:
    CMP ara[SI+4],0
    JNE strt6111
    strt777:
    CMP ara[SI+5],0
    JNE strt7111
    strt888:
    CMP ara[SI+6],0
    JNE strt8111
    strt999:
    CMP ara[SI+7],0
    JNE strt9111
    strt1010:
    CMP ara[SI+8],0
    JNE strt11111
    JMP strt11111
strt2:
    MOV CL,ara[SI]
    CMP ara[SI+1],CL
    JNE stp1
    CMP ara[SI+2],0
    JNE stp1
    MOV AX,49
    MOV BX,185
    MOV ara[SI+2],2
    CALL drawing_X
    JMP M22
    stp1:
    CMP ara[SI+2],CL
        JNE stp2
        CMP ara[SI+1],0
        JNE stp2
        MOV AX,49
        MOV BX,145
        MOV ara[SI+1],2
        CALL drawing_X
        JMP M22
strt4445550:
    JMP strt444
strt55555500:
    JMP strt555
strt666555000:
    JMP strt666
strt7775550000:
    JMP strt777
strt88855500000:
    JMP strt888
;strt99955500000:
;    JMP strt999
;strt101055500000:
;    JMP strt1010
strt3111:
    JMP strt3
strt4111:
    JMP strt41110
strt5111:
    JMP strt51110
strt6111:
    JMP strt61110
strt7111:
    JMP strt71110
strt8111:
    JMP strt81110
strt9111:
    JMP strt91110
strt11111:
    JMP strt111110
strt333555:
    JMP strt333
    stp2:
    CMP ara[SI+3],CL
       JNE stp3
       CMP ara[SI+6],0
       JNE stp3
       MOV AX,130
       MOV BX,104
       MOV ara[SI+6],2
       CALL drawing_X
       JMP M22
    stp3:
    CMP ara[SI+6],CL
        JNE stp4
        CMP ara[SI+3],0
        JNE stp4
        MOV AX,90
        MOV BX,104
        MOV ara[SI+3],2
        CALL drawing_X
        JMP M22
    stp4:
    CMP ara[SI+4],CL
        JNE stp5
        CMP ara[SI+8],0
        JNE stp5
        MOV AX,130
        MOV BX,185
        MOV ara[SI+8],2
        CALL drawing_X
        JMP M22
    stp5:
        CMP ara[SI+8],CL
        JNE strt333555
        CMP ara[SI+4],0
        JNE strt333555
        MOV AX,90
        MOV BX,145
        MOV ara[SI+4],2
        CALL drawing_X
        JMP M22
strt444555:
    JMP strt4445550
strt5555550:
    JMP strt55555500
strt66655500:
    JMP strt666555000
strt777555000:
    JMP strt7775550000
strt8885550000:
    JMP strt88855500000
strt9995550000:
    JMP strt999
    strt10105550000:
    JMP strt1010
strt3:
    MOV CL,ara[SI+1]
    CMP ara[SI+2],CL
    JNE stp6
    CMP ara[SI],0
    JNE stp6
    MOV AX,49
    MOV BX,104
    MOV ara[SI],2
    CALL drawing_X
    JMP M22

    stp6:
        CMP ara[SI+4],CL
        JNE stp7
        CMP ara[SI+7],0
        JNE stp7
        MOV AX,130
        MOV BX,145
        MOV ara[SI+7],2
        CALL drawing_X
        JMP M22
strt41110:
    JMP strt4
strt51110:
    JMP strt511100
strt61110:
    JMP strt611100
strt71110:
    JMP strt711100
strt81110:
    JMP strt811100
strt91110:
    JMP strt911100
strt111110:
    JMP strt1111100
    stp7:
        CMP ara[SI+7],CL
        JNE strt444555
        CMP ara[SI+4],0
        JNE strt444555
        MOV AX,90
        MOV BX,145
        MOV ara[SI+4],2
        CALL drawing_X
        JMP M22
strt4:
   MOV CL,ara[SI+2]  
   CMP ara[SI+5],CL
   JNE stp8
   CMP ara[SI+8],0
    JNE stp8
    MOV AX,130
    MOV BX,185  
    MOV ara[SI+8],2
    CALL drawing_X
   JMP M22
strt555555:
    JMP strt5555550
strt6665550:
    JMP strt66655500
strt77755500:
    JMP strt777555000
strt888555000:
    JMP strt8885550000
strt999555000:
    JMP strt9995550000
    strt1010555000:
    JMP strt10105550000
    stp8:  
    CMP ara[SI+8],CL
        JNE stp9
       CMP ara[SI+5],0
       JNE stp9
        MOV AX,90
        MOV BX,185  
        MOV ara[SI+5],2
        CALL drawing_X
       JMP M22
strt511100:
    JMP strt5
strt611100:
    JMP strt6111000
strt711100:
    JMP strt7111000
strt811100:
    JMP strt8111000
strt911100:
    JMP strt9111000
strt1111100:
    JMP strt11111000
    stp9:
        CMP ara[SI+4],CL
        JNE stp10
        CMP ara[SI+6],0
        JNE stp10
        MOV AX,130
        MOV BX,104
        MOV ara[SI+6],2
        CALL drawing_X
        JMP M22
    stp10:
        CMP ara[SI+6],CL
        JNE strt555555
        CMP ara[SI+4],0
        JNE strt555555
        MOV AX,90
        MOV BX,145
        MOV ara[SI+4],2
        CALL drawing_X
        JMP M22
strt666555:
    JMP strt6665550
strt7775550:
    JMP strt77755500
strt88855500:
    JMP strt888555000
strt99955500:
    JMP strt999555000
strt101055500:
    JMP strt1010555000
strt5:
    MOV CL,ara[SI+3]
    CMP ara[SI+6],CL
    JNE stp11
    CMP ara[SI],0
    JNE stp11
    MOV AX,49
    MOV BX,104
    MOV ara[SI],2
    CALL drawing_X
    JMP M22
    stp11:
        CMP ara[SI+4],CL
        JNE stp12
        CMP ara[SI+5],0
        JNE stp12
        MOV AX,90
        MOV BX,185
        MOV ara[SI+5],2
        CALL drawing_X
        JMP M22
strt6111000:
    JMP strt6
strt7111000:
    JMP strt71110000
strt8111000:
    JMP strt81110000
strt9111000:
    JMP strt91110000
strt11111000:
    JMP strt111110000
    stp12:
        CMP ara[SI+5],CL
        JNE strt666555
        CMP ara[SI+4],0
        JNE strt666555
        MOV AX,90
        MOV BX,145
        MOV ara[SI+4],2
        CALL drawing_X
        JMP M22
strt777555:
    JMP strt7775550
strt8885550:
    JMP strt88855500 
strt9995550:
    JMP strt99955500
strt10105550:
    JMP strt101055500    
strt6:
    MOV CL,ara[SI+4]
    CMP ara[SI+5],CL
    JNE stp13
    CMP ara[SI+3],0
    JNE stp13
    MOV AX,90
    MOV BX,104
    MOV ara[SI+3],2
    CALL drawing_X
    JMP M22
    stp13:
        CMP ara[SI+6],CL
        JNE stp14
        CMP ara[SI+2],0
        JNE stp14
        MOV AX,49
        MOV BX,185
        MOV ara[SI+2],2
        CALL drawing_X
        JMP M22
strt71110000:
    JMP strt7
strt888555:
    JMP strt8885550
    stp14:
        CMP ara[SI+7],CL
        JNE stp15
        CMP ara[SI+1],0
        JNE stp15
        MOV AX,49
        MOV BX,145
        MOV ara[SI+1],2
        CALL drawing_X
        JMP M22
strt81110000:
    JMP strt8
strt999555:
    JMP strt9995550
strt1010555:
    JMP strt10105550
    stp15:
        CMP ara[SI+8],CL
        JNE strt777555
        CMP ara[SI],0
        JNE strt777555
        MOV AX,49
        MOV BX,104
        MOV ara[SI],2
        CALL drawing_X
        JMP M22
strt91110000:
    JMP strt9
strt7:
    MOV CL,ara[SI+5]
    CMP ara[SI+8],CL
    JNE strt888555
    CMP ara[SI+2],0
    JNE strt888555
    MOV AX,49
    MOV BX,185
    MOV ara[SI+2],2
    CALL drawing_X
    JMP M22
strt8:
    MOV CL,ara[SI+6]
    CMP ara[SI+7],CL
    JNE stp16
    CMP ara[SI+8],0
    JNE stp16
    MOV AX,130
    MOV BX,185
    MOV ara[SI+8],2
    CALL drawing_X
    JMP M22
strt111110000:
    JMP strt11
strt10105552:
    JMP strt1010555
    stp16:
        CMP ara[SI+8],CL
        JNE strt999555
        CMP ara[SI+7],0
        JNE strt999555
        MOV AX,130
        MOV BX,145
        MOV ara[SI+7],2
        CALL drawing_X
        JMP M22
strt9:
    MOV CL,ara[SI+7]
    CMP ara[SI+8],CL
    JNE strt10105552
    CMP ara[SI+6],0
    JNE strt10105552
    MOV AX,130
    MOV BX,104
    MOV ara[SI+6],2
    CALL drawing_X
    JMP M22
strt11:
    LEA SI,ara
    MOV AH,2CH
    INT 21H
    MOV AL,DL
    CBW
    MOV BL,12
    IDIV BL
    MOV AH,0
    MOV tmp22,AX
    ADD SI,AX
    CMP ara[SI],0
    JNE strt11
    
    MOV ara[SI],2
    LEA SI,ara
    CMP tmp22,0
    JNE strt12
    MOV AX,49
    MOV BX,104
    CALL drawing_X
    JMP M22
strt12:
    CMP tmp22,1
    JNE strt13
    MOV AX,49
    MOV BX,145
    CALL drawing_X
    JMP M22
strt13:
    CMP tmp22,2
    JNE strt14
    MOV AX,49
    MOV BX,185
    CALL drawing_X
    JMP M22
strt14:
    CMP tmp22,3
    JNE strt15
    MOV AX,90
    MOV BX,104
    CALL drawing_X
    JMP M22
strt15:
    CMP tmp22,4
    JNE strt16
    MOV AX,90
    MOV BX,145
    CALL drawing_X
    lagbo:
    JMP M22
strt16:
    CMP tmp22,5
    JNE strt17
    MOV AX,90
    MOV BX,185
    CALL drawing_X
    JMP M22
strt17:
    CMP tmp22,6
    JNE strt18
    MOV AX,130
    MOV BX,104
    CALL drawing_X
    JMP M22
strt18:
    CMP tmp22,7
    JNE strt19
    MOV AX,130
    MOV BX,145
    CALL drawing_X
    JMP M22
strt19:
    CMP tmp22,8
    JNE lagbo
    MOV AX,130
    MOV BX,185
    CALL drawing_X
    JMP M22
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    RET
rand ENDP

manVscom Proc
    ; MAKING ALL THE ELEMENTS OF ara "ZERO'    
    LEA SI,ara
    MOV a,0
ll122:
    MOV ara[SI],0
    INC SI
    INC a
    CMP a,9
    JL ll122
   
    ; reset mouse and get its status:
    mov ax, 0
    int 33h
    cmp ax, 0
    
    MOV Al,po11
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    point11 tmp1
    point12 tmp2
    
    MOV Al,po22
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    point21 tmp1
    point22 tmp2
    
    MOV Al,dr2
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    draw21 tmp1
    draw22 tmp2
M22: 
    ;display mouse cursor:
    mov ax, 1
    int 33h
    MOV BX,0
    MOV AX,3
    INT 33H
    shr CX,1
    CMP BX,1
    JNE M22;bakita change korte hobe
    MOV drkr1,CX
    MOV drkr2,DX
    
 Moo:
;ROW WINNING FUNCTION     
    LEA SI,ara
chk122:
    CMP ara[SI],0
    JNE chk222
chk522:
    CMP ara[SI+3],0
    JNE chk322
chk622:
    CMP ara[SI+6],0
    JNE chk422
    bb22:
    JMP Mahi22
chk222:
    MOV BL,ara[SI]
    CMP BL,ara[SI+1]
    JNE chk522
    CMP BL,ara[SI+2]
    JNE chk522
    JMP rslt122
chk322:
    MOV BL,ara[SI+3]
    CMP BL,ara[SI+4]
    JNE chk622
    CMP BL,ara[SI+5]
    JNE chk622
    JMP rslt222
chk422:
    MOV BL,ara[SI+6]
    CMP BL,ara[SI+7]
    JNE bb22
    CMP BL,ara[SI+8]
    JNE bb22
    JMP rslt322
    
rslt122:
    MOV AX,2
    INT 33H
    draw_rWinning 49
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI],1
    JE ssd22
    CALL ply22;;;;;;;;change kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    bb122:
    JMP M22
    ssd22:
    CALL Ply11;;;;;;;;;;;;;;;;;;;;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
rslt222: 
    MOV AX,2
    INT 33H
    draw_rWinning 90
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+3],1
    JE ssd122
    CALL ply22;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    ;JMP M
    ssd122:
    CALL Ply11;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
    ;JMP M
rslt322:
    MOV AX,2
    INT 33H
    draw_rWinning 130
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+6],1
    JE ssd222
    CALL ply22;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    ;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    bbb122:
    JMP M
    ssd222:
    CALL Ply11;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    ;;;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
;COLUMN WINNING FUNCTION
Mahi22:
    LEA SI,ara
chk1122:
    CMP ara[SI],0
    JNE chk1222
    chk1522:
    CMP ara[SI+1],0
    JNE chk1322
    chk1622:
    CMP ara[SI+2],0
    JNE chk1422
    bb1122:
    JMP Mahi122
    chk1222:
    MOV BL,ara[SI]
    CMP BL,ara[SI+3]
    JNE chk1522
    CMP BL,ara[SI+6]
    JNE chk1522
    JMP rslt1122
    chk1322:
    MOV BL,ara[SI+1]
    CMP BL,ara[SI+4]
    JNE chk1622
    CMP BL,ara[SI+7]
    JNE chk1622
    JMP rslt1222
    chk1422:
    MOV BL,ara[SI+2]
    CMP BL,ara[SI+5]
    JNE bb1122
    CMP BL,ara[SI+8]
    JNE bb1122
    JMP rslt1322
    
    rslt1122:
    MOV AX,2
    INT 33H
    draw_cWinning 104
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI],1
    JE ssd322
    CALL ply22;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    ;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    ssd322:
    CALL Ply11;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    ;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
    rslt1222: 
    MOV AX,2
    INT 33H
    draw_cWinning 145
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+1],1
    JE ssd422
    CALL ply22;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    ;;;;;;;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    ssd422:
    CALL Ply11;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    ;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
    rslt1322:
    MOV AX,2
    INT 33H
    draw_cWinning 185
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+2],1
    JE ssd522
    CALL ply22;kkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    ;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    bbb222:
    JMP M22
    ssd522:
    CALL Ply11;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    ;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
    
    mahi122:
    LEA SI,ara
    chk11122:
    CMP ara[SI],0
    JNE chk11222
    chk11522:
    CMP ara[SI+2],0
    JNE chk11322
    bbb11122:
    JMP mahi222
    chk11222:
    MOV BL,ara[SI]
    CMP BL,ara[SI+4]
    JNE chk11522
    CMP BL,ara[SI+8]
    JNE chk11522
    JMP rslt11122
    chk11322:
    MOV BL,ara[SI+2]
    CMP BL,ara[SI+4]
    JNE bbb11122
    CMP BL,ara[SI+6]
    JNE bbb11122
    JMP rslt11222
    
    rslt11122:
    CALL cross1
    ;CALL DISPLAY_GAME_OVER
    LEA SI,ara
    CMP ara[SI+4],1
    JE ssd622
    CALL ply22;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    ;;;;;;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    ssd622:
    CALL Ply11;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    ;;;;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
    rslt11222: 
    CALL cross2
    ;CALL DISPLAY_GAME_OVER    
    LEA SI,ara
    CMP ara[SI+4],1
    JE ssd722
    CALL ply22;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po22
    MOV AL,po22
    ;;;;;;;;;;;;;;;CALL Point2
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point21 tmp1
    point22 tmp2
    JMP exi22
    bbb322:
    JMP M22
    ssd722:
    CALL Ply11;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    INC po11
    MOV AL,po11
    ;;;;;;;;;;;;;;;;;;;;CALL Point1
    CBW
    MOV BL,10
    IDIV BL
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    point11 tmp1
    point12 tmp2
    JMP exi22
    llll122:
    CALL DRAWNN
    INC dr2
    MOV Al,dr2
    CBW
    MOV BL,10
    IDIV BL
    
    MOV tmp1,AL
    ADD tmp1,48
    MOV tmp2,AH
    ADD tmp2,48
    
    draw21 tmp1
    draw22 tmp2
    JMP exi22
;draw   
mahi222:
  MOV co,0
  LEA SI,ara
  llll22:
    CMP ara[SI],0
    JE None
    INC SI
    INC co
    CMP co,9
    JL llll22
    CMP co,9
    JE llll122
 
None:
    CALL lengg
    MOV CX,drkr1
    MOV DX,drkr2
    CMP AH,1
    JNE N22223
    CALL rand   
    
;CALL colWinning
;FIRST ROW MOUSE CLICK

;ara[0]    
N22223:
    CMP CX,85
    JLE blk2222
    N122:
    CMP CX,124
    JGE N21122
    CMP DX,30 
    JLE blk2222
    N222:
    CMP DX,69
    JGE N11122
    
    LEA SI,ara
    CMP ara[SI],0
    JNE blk222
    MOV AX,2
    INT 33H
    CALL lengg;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    CMP AH,1
    JE XXL1
    MOV AX,49
    MOV BX,104
    CALL drawing_O
    LEA SI,ara
    MOV ara[SI],1
    Moo1:
    JMP Moo
    XXL1:
    CALL timmer
    CALL rand
    ;JMP M22
    
    N21122:
    JMP N322   
    blk2222:
    JMP blk222
    N11122:
    JMP N1022
    blk222:
    JMP M22
;ara[1]   
N322:
    CMP CX,126 
    JLE blk222
    N422:
    CMP CX,164
    JGE N21222
    CMP DX,30
    JLE blk222
    N522:
    CMP DX,69
    JGE N11222
    LEA SI,ara
    CMP ara[SI+1],0
    JNE blk122
    ;;;
    mov ax, 2
    int 33h
    CALL lengg
    CMP AH,1
    JE XXL2
    MOV AX,49
    MOV BX,145
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+1],1
    Moo2:
    JMP Moo1 
    XXL2:
    CALL timmer
    CALL rand
    ;JMP M22
    
    N21222:
    JMP N622
    blk122:
    JMP M22
    N11222:
    JMP N1322    
;ara[2]
N622: 
    CMP CX,166
    JLE blk122
    N722:
    CMP CX,205
    JGE exi22
    CMP DX,30
    JLE blk122
    N822:
    CMP DX,69
    JGE N113322
    LEA SI,ara
    CMP ara[SI+2],0
    JNE blk122
    ;;;
    MOV AX,2
    INT 33H
    CALL lengg
    CMP AH,1
    JE XXL3
    MOV AX,49
    MOV BX,185
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+2],1
    Moo3:
    JMP Moo2
    XXL3:
    CALL timmer
    CALL rand
    ;JMP M22
    
    N113322:
    JMP N11322
    exi22:
    MOV AX,1
    INT 33H 
    MOV BX,0
    MOV AX,3
    INT 33H
    SHR CX,1
    CMP BX,1
    JNE exi22
    CMP DX,155
    JL exi22
    CMP DX,170
    JG exi122
    CMP CX,250
    JL exi22
    CMP CX,300
    JG exi22
    JMP againn
    exi122:
    CMP DX,170
    JL exi22
    CMP DX,189
    JG exi22
    mov ah, 00
    mov al, 13h       ; set screen to 256 colors, 320x200 pixels. 
    int 10h
    MOV AH,4CH
    INT 21H
    N11322:
    JMP N1622    
; SECOND ROW MOUSE CLICK  
;ara[3]  
N1022:
    CMP DX,71
    JLE bba22
    N1122:
    CMP DX,109
    JGE N11422; change korte hobe
    LEA SI,ara
    CMP ara[SI+3],0
    JNE blk1222
    ;;;
    MOV AX,2
    INT 33H
    CALL lengg
    CMP AH,1
    JE XXL4
    MOV AX,90
    MOV BX,104
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+3],1
    Moo4:
    JMP Moo3
    XXL4:
    CALL timmer
    CALL rand
    ;JMP blk1122
    bba22:
    JMP blk1222
    N11422:
    JMP N1822  
    blk1222: 
    JMP EXIT22 
;ara[4]
N1322:
    CMP DX,71
    JLE blk1122
    N1422:
    CMP DX,109
    JGE N11522;change korte hobe
    LEA SI,ara
    CMP ara[SI+4],0
    JNE blk1122
    ;;;
    MOV AX,2
    INT 33H
    CALL lengg
    CMP AH,1
    JE XXL5
    MOV AX,90
    MOV BX,145
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+4],1
    Moo5:
    JMP Moo4
    XXL5:
    CALL timmer
    CALL rand
    ;JMP M22
    

    blk1122:
    JMP EXIT22
    N11522:
    JMP N2022    
;ara[5]
N1622:
    CMP DX,71
    JLE blk322
    N1722:
    CMP DX,109
    JGE N11622;change korte hobe
    LEA SI,ara
    CMP ara[SI+5],0
    JNE blk322
    ;;;
    MOV AX,2
    INT 33H
    CALL lengg
    CMP AH,1
    JE XXL6
    MOV AX,90
    MOV BX,185
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+5],1
    Moo6:
    JMP Moo5
    XXL6:
    CALL timmer
    CALL rand
    ;JMP blk322
    
    blk322:
    JMP EXIT22  
    N11622:
    JMP N2222  
;THIRD ROW MOUSE CLICK
;ara[6]
N1822:
    CMP DX,111
    JLE blk422
    N1922:
    CMP DX,150
    JGE blk422; change korte hobe
    LEA SI,ara
    CMP ara[SI+6],0
    JNE blk422
    ;;;
    MOV AX,2
    INT 33H
    CALL lengg
    CMP AH,1
    JE XXL7
    MOV AX,130
    MOV BX,104
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+6],1
    Moo7:
    JMP Moo6
    XXL7:
    CALL timmer
    CALL rand
    ;JMP blk422
  
    blk422:
    JMP EXIT22
    
;ara[7]
N2022:
    CMP DX,111
    JLE blk522
    N2122:
    CMP DX,150
    JGE blk522;change korte hobe
    LEA SI,ara
    CMP ara[SI+7],0
    JNE blk522
    ;;;
    MOV AX,2
    INT 33H
    CALL lengg
    CMP AH,1
    JE XXL8
    MOV AX,130
    MOV BX,145
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+7],1
    Moo8:
    JMP Moo7
    XXL8:
    CALL timmer
    CALL rand
    ;JMP blk522
    
    blk522:
    JMP EXIT22
    
;ara[8]
N2222:
    CMP DX,111
    JLE EXIT22
    N2322:
    CMP DX,150
    JGE EXIT22
    LEA SI,ara
    CMP ara[SI+8],0
    JNE EXIT22
    ;;;
    MOV AX,2
    INT 33H
    CALL lengg
    CMP AH,1
    JE XXL9
    MOV AX,130
    MOV BX,185
    CALL drawing_O
    LEA SI, ara
    MOV ara[SI+8],1
    Moo9:
    JMP Moo8
    XXL9:
    CALL timmer
    CALL rand
    ;JMP EXIT22
    
    EXIT22: 
    JMP M22 
  RET  
  manVscom ENDP

main PROC
    MOV AX, @data
    MOV DS, AX
    
; set graphics display mode & draw border
    ;CALL set_display_mode
    
    ;mov ah, 00
    ;mov al, 13h       ; set screen to 256 colors, 320x200 pixels. 
    ;int 10h
againn:    
    CALL set_main
    
    mov ax, 0
    int 33h
    cmp ax, 0
    
    XOR CX,CX
    XOR DX,DX
ag:  
    mov ax, 1
    int 33h
    MOV BX,0
    MOV AX,3
    INT 33H
    shr CX,1
    CMP BX,2
    JNE ag
    
    
    CMP CX,107
    JLE ag
    CMP CX,177
    JGE nxt2
    CMP DX,100
    JLE ag
    CMP DX,115
    JGE nxt21
    MOV BX,0
    MOV CX,0
    MOV DX,0
    MOV ax,0
    int 33H
    CALL set_display_mode
    CALL Player1
    CALL player2
    CALL Dr
    CALL manVsman
nxt21:
    CMP CX,107
    JLE nxt1
    CMP CX,177
    JGE nxt2
    CMP DX,132
    JLE nxt1
    CMP DX,147
    JGE nxt2
    MOV BX,0
    MOV CX,0
    MOV DX,0
    MOV ax,0
    int 33H
    CALL set_display_mode
    CALL Player11
    CALL player22
    CALL Dr
    CALL manVscom
    
nxt2:
    CMP CX,250
    JLE nxt1
    CMP CX,300
    JGE nxt1
    CMP DX,170
    JLE nxt1
    CMP DX,189
    JGE nxt1
    mov ah, 00
    mov al, 13h       ; set screen to 256 colors, 320x200 pixels. 
    int 10h
    MOV AH,4Ch
    INT 21H
nxt1:
    JMP ag
main ENDP
end main