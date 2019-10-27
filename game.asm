.model small
.stack
.386

;

.data

;my string variables
n_a_m_e db 'BY:CHRISTIAN PIZARRO'
n_a_m_eEND label byte
titl db '  G A M E   O F    1 9  '
titlEND label byte
inst db 'HOW TO PLAY: Move the empty slot around'
instEND label byte
goal db 'GOAL: Get the board in order with empty slot on bottom right'
goalEND label byte
left db ' a = LEFT  '
leftEND label byte
right db ' d = RIGHT '
rightEND label byte
up db ' w = UP    '
upEND label byte
down db ' s = DOWN  '
downEND label byte
space db '           '
spaceEND label byte
return db ' ESC = END '
returnEND label byte

err1 db '! MOVE NOT MADE !'
err1END label byte


.code

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0300h
    int 10h
    sub ax,ax
    mov ah,3h
    mov bh,0
    int 10h
    mov ax,0b800h
    mov es,ax



version0:
    mov ax,0b800h
    mov ah,160
    call clearscr
    call words
    call drawtable
    call setversion0
    call nocursor

input0:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version1
    ;cmp al, 64h ;right
    ;je error1
    cmp al,77h ;up
    je version2
    ;cmp al, 73h ;down
    ;je error1
    cmp al, 1bh
    je quit
    jmp input0


version1:
    mov ax,0b800h
    mov ah,160
    call setversion1

input1:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version12
    cmp al, 64h ;right
    je version0
    cmp al,77h ;up
    je version4
    ;cmp al, 73h ;down
    ;je error1
    ;cmp al, 1bh
    je quit
    jmp input1

version2:
    mov ax,0b00h
    mov ah,160
    call setversion2

input2:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version3
    ;cmp al, 64h ;right
    ;je error1
    ;cmp al,77h ;up
    ;je error1
    cmp al, 73h ;down
    je version0
    cmp al, 1bh
    je quit
    jmp input2

version3:
    mov ax,0b00h
    mov ah,160
    call setversion3

input3:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je error1
    cmp al, 64h ;right
    je version2
    ;cmp al,77h ;up
    ;je error1
    cmp al, 73h ;down
    je version5
    cmp al, 1bh
    je quit
    jmp input3

version4:
    mov ax,0b00h
    mov ah,160
    call setversion4

input4:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je error1
    cmp al, 64h ;right
    je version6
    ;cmp al,77h ;up
    ;je version4
    cmp al, 73h ;down
    je version1
    cmp al, 1bh
    je quit
    jmp input4

version5:
    mov ax,0b00h
    mov ah,160
    call setversion5

input5:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je error1
    cmp al, 64h ;right
    je version11
    cmp al,77h ;up
    je version3
    ;cmp al, 73h ;down
    ;je version
    cmp al, 1bh
    je quit
    jmp input5

version6:
    mov ax,0b00h
    mov ah,160
    call setversion6

input6:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version4
    ;cmp al, 64h ;right
    ;je error1
    ;cmp al,77h ;up
    ;je version3
    cmp al, 73h ;down
    je version7
    cmp al, 1bh
    je quit
    jmp input6

version7:
    mov ax,0b00h
    mov ah,160
    call setversion7

input7:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version8
    ;cmp al, 64h ;right
    ;je error1
    cmp al,77h ;up
    je version6
    ;cmp al, 73h ;down
    ;je version
    cmp al, 1bh
    je quit
    jmp input7

version8:
    mov ax,0b00h
    mov ah,160
    call setversion8

input8:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version4
    cmp al, 64h ;right
    je version7
    cmp al,77h ;up
    je version9
    ;cmp al, 73h ;down
    ;je version
    cmp al, 1bh
    je quit
    jmp input8

version9:
    mov ax,0b00h
    mov ah,160
    call setversion9

input9:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version4
    cmp al, 64h ;right
    je version10
    ;cmp al,77h ;up
    ;je version3
    cmp al, 73h ;down
    je version8
    cmp al, 1bh
    je quit
    jmp input9

version10:
    mov ax,0b00h
    mov ah,160
    call setversion10

input10:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version9
    ;cmp al, 64h ;right
    ;je error1
    ;cmp al,77h ;up
    ;je version3
    cmp al, 73h ;down
    je version11
    cmp al, 1bh
    je quit
    jmp input10

version11:
    mov ax,0b00h
    mov ah,160
    call setversion11

input11:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version5
    ;cmp al, 64h ;right
    ;je error1
    cmp al,77h ;up
    je version10
    ;cmp al, 73h ;down
    ;je version
    cmp al, 1bh
    je quit
    jmp input11

version12:
    mov ax,0b00h
    mov ah,160
    call setversion12

input12:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version13
    cmp al, 64h ;right
    je version1
    ;cmp al,77h ;up
    ;je version1
    ;cmp al, 73h ;down
    ;je version
    cmp al, 1bh
    je quit
    jmp input12

version13:
    mov ax,0b00h
    mov ah,160
    call setversion13

input13:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version14
    cmp al, 64h ;right
    je version12
    ;cmp al,77h ;up
    ;je version12
    ;cmp al, 73h ;down
    ;je version
    cmp al, 1bh
    je quit
    jmp input13

version14:
    mov ax,0b00h
    mov ah,160
    call setversion14

input14:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version15
    cmp al, 64h ;right
    je version13
    cmp al,77h ;up
    je version15
    ;cmp al, 73h ;down
    ;je version
    cmp al, 1bh
    je quit
    jmp input14

version15:
    mov ax,0b00h
    mov ah,160
    call setversion15

input15:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version15
    ;cmp al, 64h ;right
    ;je error1
    cmp al,77h ;up
    je version16
    cmp al, 73h ;down
    je version14
    cmp al, 1bh
    je quit
    jmp input15

version16:
    mov ax,0b00h
    mov ah,160
    call setversion16

input16:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version15
    ;cmp al, 64h ;right
    ;je error1
    cmp al,77h ;up
    je version17
    cmp al, 73h ;down
    je version15
    cmp al, 1bh
    je quit
    jmp input16

version17:
    mov ax,0b00h
    mov ah,160
    call setversion17

input17:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version15
    cmp al, 64h ;right
    je version18
    ;cmp al,77h ;up
    ;je version17
    cmp al, 73h ;down
    je version16
    cmp al, 1bh
    je quit
    jmp input17

version18:
    mov ax,0b00h
    mov ah,160
    call setversion18

input18:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version17
    cmp al, 64h ;right
    je version19
    ;cmp al,77h ;up
    ;je version17
    ;cmp al, 73h ;down
    ;je version16
    cmp al, 1bh
    je quit
    jmp input18

version19:
    mov ax,0b00h
    mov ah,160
    call setversion19

input19:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version18
    cmp al, 64h ;right
    je version20
    ;cmp al,77h ;up
    ;je version17
    ;cmp al, 73h ;down
    ;je version16
    cmp al, 1bh
    je quit
    jmp input19

version20:
    mov ax,0b00h
    mov ah,160
    call setversion20

input20:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version19
    cmp al, 64h ;right
    je version21
    ;cmp al,77h ;up
    ;je version17
    ;cmp al, 73h ;down
    ;je version16
    cmp al, 1bh
    je quit
    jmp input20

version21:
    mov ax,0b00h
    mov ah,160
    call setversion21

input21:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version20
    ;cmp al, 64h ;right
    ;je version21
    ;cmp al,77h ;up
    ;je version17
    cmp al, 73h ;down
    je version22
    cmp al, 1bh
    je quit
    jmp input21

version22:
    mov ax,0b00h
    mov ah,160
    call setversion22

input22:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version20
    ;cmp al, 64h ;right
    ;je version21
    cmp al,77h ;up
    je version21
    cmp al, 73h ;down
    je version23
    cmp al, 1bh
    je quit
    jmp input22

version23:
    mov ax,0b00h
    mov ah,160
    call setversion23

input23:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version20
    ;cmp al, 64h ;right
    ;je version21
    cmp al,77h ;up
    je version22
    cmp al, 73h ;down
    je version24
    cmp al, 1bh
    je quit
    jmp input23

version24:
    mov ax,0b00h
    mov ah,160
    call setversion24

input24:
    mov ah,10h
    int 16h
    cmp al,61h ;left
    je version25
    ;cmp al, 64h ;right
    ;je version21
    cmp al,77h ;up
    je version23
    ;cmp al, 73h ;down
    ;je version24
    cmp al, 1bh
    je quit
    jmp input24

version25:
    mov ax,0b00h
    mov ah,160
    call setversion25

input25:
    mov ah,10h
    int 16h
    ;cmp al,61h ;left
    ;je version25
    cmp al, 64h ;right
    je version24
    ;cmp al,77h ;up
    ;je version23
    ;cmp al, 73h ;down
    ;je version24
    cmp al, 1bh
    je quit
    jmp input25



quit:
    call clearscr
    .exit

main endp

drawtable proc

    ;area is 25 by 80
    pusha
    int 10h

    mov cx, 51 ;total bars/loops
    add bx, 350  ; position
    horizontal1:
        mov word ptr es:[bx],02dch
        add bx,2
        loop horizontal1

    mov cx, 51
    mov bx, 990  ; POSITION, writes horizontally through screen
    horizontal2:
        mov word ptr es:[bx],02dch
        add bx,2
        loop horizontal2

    mov cx, 51
    mov bx, 1630  ;
    horizontal3:
        mov word ptr es:[bx],02dch
        add bx,2
        loop horizontal3

    mov cx, 51
    mov bx, 2270  ;total bars
    horizontal4:
        mov word ptr es:[bx],02dch
        add bx,2
        loop horizontal4

    mov cx, 51
    mov bx,2910
    horizontal5:
        mov word ptr es:[bx],02dch
        add bx,2
        loop horizontal5

    mov cx, 16
    mov bx, 510
    vertical1:
        mov word ptr es:[bx],02dbh
        add bx,160
        loop vertical1

    mov cx, 16 ; amount of loops
    mov bx, 530 ; starting location
    vertical2:
        mov word ptr es:[bx],02dbh
        add bx,160
        loop vertical2

    mov cx, 16
    mov bx, 550
    vertical3:
        mov word ptr es:[bx],02dbh
        add bx,160
        loop vertical3

    mov cx, 16
    mov bx, 570
    vertical4:
        mov word ptr es:[bx],02dbh
        add bx,160
        loop vertical4

    mov cx, 16
    mov bx, 590
    vertical5:
        mov word ptr es:[bx],02dbh
        add bx,160
        loop vertical5

    mov cx, 16
    mov bx, 610
    vertical6:
        mov word ptr es:[bx],02dbh
        add bx,160
        loop vertical6

        sub ax,ax
        sub bx,bx
        sub cx,cx
        sub dx,dx
    popa
    ret

drawtable endp

words proc

    pusha
    int 10h

    mov ax,@data
    mov ds,ax
    mov ah,09h

    mov cx,(offset n_a_m_eEND -offset n_a_m_e)
    mov si,offset n_a_m_e
    mov di,3960
    nameL:
        mov al, byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop nameL

    mov ah,2fh
    mov cx,(offset titlEND -offset titl)
    mov si,offset titl
    mov di,216
    titleL:
        mov al, byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop titleL

    ;mov ah,0
    mov ah,1fh
    mov cx,(offset leftEND -offset left)
    mov si,offset left
    mov di,642
    leftL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop leftL

    mov ah,0
    mov ah,1fh
    mov cx,(offset rightEND -offset right)
    mov si,offset right
    mov di,802
    rightL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop rightL

    mov ah,1fh
    mov cx,(offset upEND -offset up)
    mov si,offset up
    mov di,962
    upL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop upL

    mov ah,0
    mov ah,1fh
    mov cx,(offset downEND -offset down)
    mov si,offset down
    mov di,1122
    downL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop downL

    mov ah,0
    mov ah,1fh
    mov cx,(offset spaceEND -offset space)
    mov si,offset space
    mov di,1282
    spaceL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop spaceL

    mov ah,0
    mov ah,1fh
    mov cx,(offset returnEND -offset return)
    mov si,offset return
    mov di,1442
    returnL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop returnL

    mov ah,0
    mov ah,0fh
    mov cx,(offset instEND -offset inst)
    mov si,offset inst
    mov di,3404
    instL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop instL

    mov ah,0
    mov ah,0fh
    mov cx,(offset goalEND -offset goal)
    mov si,offset goal
    mov di,3540
    goalL:
        mov al,byte ptr [si]
        inc si
        mov es:[di],ax
        add di,2
        loop goalL

    mov ah,0
    popa
    ret

words endp

setversion0 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '4' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '6'
    mov byte ptr es:[bx+40], '3'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '5'
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '8'
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '8'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '3'

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'7'
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    mov bx,2600
    mov byte ptr es:[bx],'9'
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '1'
    mov byte ptr es:[bx+40], '6'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '2'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion0 endp


setversion1 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'

    mov bx,2600
    mov byte ptr es:[bx+40], '6'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    popa
    ret

setversion1 endp

setversion2 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '3'

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    popa
    ret

setversion2 endp

setversion3 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '4'

    mov bx,2600
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '2'

    popa
    ret

setversion3 endp

setversion4 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    mov bx,2600
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'

    popa
    ret

setversion4 endp

setversion5 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '2'

    mov bx,2600
    mov byte ptr es:[bx+40], '6'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    popa
    ret

setversion5 endp

setversion6 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '3'

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '5'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    popa
    ret

setversion6 endp

setversion7 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    mov bx,2600
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion7 endp

setversion8 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '5'

    mov bx,2600
    mov byte ptr es:[bx+40], '6'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '4'

    popa
    ret

setversion8 endp

setversion9 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    mov bx,2600
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '5'

    popa
    ret

setversion9 endp

setversion10 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '3'

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '2'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '4'

    popa
    ret

setversion10 endp

setversion11 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '4'

    mov bx,2600
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '5'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion11 endp

setversion12 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'

    mov bx,2600
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '1'
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '6'
    mov byte ptr es:[bx+62], ' '

    popa
    ret

setversion12 endp

setversion13 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'9'
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '1'

    popa
    ret

setversion13 endp

setversion14 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'7'

    mov bx,2600
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '9'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion14 endp

setversion15 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '8'

    mov bx, 1960
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'7'

    popa
    ret

setversion15 endp

setversion16 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '4' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    mov bx, 1320
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'8'

    popa
    ret

setversion16 endp

setversion17 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '6'

    mov bx, 1320
    mov byte ptr es:[bx], '4' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    popa
    ret

setversion17 endp

setversion18 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '6'
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '3'
    mov byte ptr es:[bx+42], ' '

    mov bx, 1320
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion18 endp

setversion19 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+20], '3'
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], ' '

    mov bx, 1320
    mov byte ptr es:[bx+40], '8'
    mov byte ptr es:[bx+42], ' '

    popa
    ret

setversion19 endp

setversion20 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '5'
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '

    popa
    ret

setversion20 endp

setversion21 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+60], '5'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '3'

    popa
    ret

setversion21 endp

setversion22 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '3'

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    popa
    ret

setversion22 endp

setversion23 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    popa
    ret

setversion23 endp

setversion24 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    mov bx,2600
    mov byte ptr es:[bx+60], '6'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion24 endp

setversion25 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'

    mov bx,2600
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '1'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion25 endp

setversion26 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'

    mov bx,2600
    mov byte ptr es:[bx+20], '9'
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '1'

    popa
    ret

setversion26 endp

setversion27 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'7'
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '9'
    mov byte ptr es:[bx+42], ' '

    popa
    ret

setversion27 endp

setversion28 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'8'

    mov bx,2600
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '7'

    popa
    ret

setversion28 endp

setversion29 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx], '4' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    mov bx, 1960
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'8'

    popa
    ret

setversion29 endp

setversion30 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '6'

    mov bx, 1320
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1960
    mov byte ptr es:[bx],'4'
    mov byte ptr es:[bx+2],' '

    popa
    ret

setversion30 endp

setversion31 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '3'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1320
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '6'

    popa
    ret

setversion31 endp

setversion32 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '3' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], ' '

    mov bx, 1320
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion32 endp

setversion33 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '5'
    mov byte ptr es:[bx+62], ' '

    mov bx, 1320
    mov byte ptr es:[bx+40], '8'
    mov byte ptr es:[bx+42], ' '

    popa
    ret

setversion33 endp

setversion34 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+40], '5'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '3'

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '

    popa
    ret

setversion34 endp

setversion35 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '3'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    popa
    ret

setversion35 endp

setversion36 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    popa
    ret

setversion36 endp

setversion37 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion37 endp

setversion38 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '1'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion38 endp

setversion39 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'

    mov bx,2600
    mov byte ptr es:[bx+40], '9'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    popa
    ret

setversion39 endp

setversion40 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'

    mov bx,2600
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '7'
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '9'
    mov byte ptr es:[bx+62], ' '

    popa
    ret

setversion40 endp

setversion41 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'8'
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '7'

    popa
    ret

setversion41 endp

setversion42 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx],'4'
    mov byte ptr es:[bx+2],' '

    mov bx,2600
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '8'

    popa
    ret

setversion42 endp

setversion43 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '6'

    mov bx, 1960
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'4'
    mov byte ptr es:[bx+2],' '

    popa
    ret

setversion43 endp

setversion44 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '3' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    mov bx, 1320
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'6'

    popa
    ret

setversion44 endp

setversion45 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1320
    mov byte ptr es:[bx], '3' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    popa
    ret

setversion45 endp

setversion46 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '5'
    mov byte ptr es:[bx+42], ' '

    mov bx, 1320
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion46 endp

setversion47 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+20], '5'
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '3'

    mov bx, 1320
    mov byte ptr es:[bx+40], '8'
    mov byte ptr es:[bx+42], ' '

    popa
    ret

setversion47 endp

setversion48 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '3'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '5'

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '

    popa
    ret

setversion48 endp

setversion49 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '5'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'


    popa
    ret

setversion49 endp

setversion50 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion50 endp

setversion51 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    popa
    ret

setversion51 endp

setversion52 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    mov bx,2600
    mov byte ptr es:[bx+60], '9'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion52 endp

setversion53 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'

    mov bx,2600
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '7'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '9'
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion53 endp

setversion54 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'

    mov bx,2600
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '8'
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '7'

    popa
    ret

setversion54 endp

setversion55 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'4'
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '8'

    popa
    ret

setversion55 endp

setversion56 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'6'

    mov bx,2600
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '4'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion56 endp

setversion57 proc

    pusha
    mov ax,@data
    mov ds,ax


    mov bx, 1320
    mov byte ptr es:[bx], '3' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    mov bx, 1960
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'6'

    popa
    ret

setversion57 endp

setversion58 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    mov bx, 1320
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1960
    mov byte ptr es:[bx],'3'
    mov byte ptr es:[bx+2],' '

    popa
    ret

setversion58 endp

setversion59 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '5'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1320
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], ' '


    popa
    ret

setversion59 endp

setversion60 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '5' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '3'

    mov bx, 1320
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion60 endp

setversion61 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '3'
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '5'

    mov bx, 1320
    mov byte ptr es:[bx+40], '8'
    mov byte ptr es:[bx+42], ' '

    popa
    ret

setversion61 endp

setversion62 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '5'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '2'

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '


    popa
    ret

setversion62 endp

setversion63 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '2'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion63 endp

setversion64 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    popa
    ret

setversion64 endp

setversion65 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '9'
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion65 endp

setversion66 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+80], '9'
    mov byte ptr es:[bx+82], ' '

    mov bx,2600

    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '7'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion66 endp

setversion67 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'

    mov bx,2600
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '8'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '7'

    popa
    ret

setversion67 endp

setversion68 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'

    mov bx,2600
    mov byte ptr es:[bx+20], '4'
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '8'

    popa
    ret

setversion68 endp

setversion69 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],'6'
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '4'
    mov byte ptr es:[bx+42], ' '

    popa
    ret

setversion69 endp

setversion70 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx],'3'
    mov byte ptr es:[bx+2],' '

    mov bx,2600
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '6'

    popa
    ret

setversion70 endp

setversion71 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    mov bx, 1960
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'3'
    mov byte ptr es:[bx+2],' '

    popa
    ret

setversion71 endp

setversion72 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '5' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    mov bx, 1320
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],' '

    popa
    ret

setversion72 endp

setversion73 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '3'

    mov bx, 1320
    mov byte ptr es:[bx], '5' ;BX+even number
    mov byte ptr es:[bx+2], ' '

    popa
    ret

setversion73 endp

setversion74 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '3'
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '5'

    mov bx, 1320
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion74 endp

setversion75 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '5'
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '2'

    mov bx, 1320
    mov byte ptr es:[bx+40], '8'
    mov byte ptr es:[bx+42], ' '

    popa
    ret

setversion75 endp

setversion76 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '2'
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '6'
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '


    popa
    ret

setversion76 endp

setversion77 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+60], '6'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    popa
    ret

setversion77 endp

setversion78 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    mov bx, 1320
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx+80], '9'
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion78 endp

setversion79 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1320
    mov byte ptr es:[bx+80], '9'
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx,2600
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '7'

    popa
    ret

setversion79 endp

setversion80 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '7'

    mov bx,2600
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '8'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    popa
    ret

setversion80 endp

setversion81 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '4'

    mov bx,2600
    mov byte ptr es:[bx+40], '4'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion81 endp

setversion82 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '0'

    mov bx,2600
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '6'
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '4'
    mov byte ptr es:[bx+62], ' '

    popa
    ret

setversion82 endp

setversion83 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'

    mov bx,2600
    mov byte ptr es:[bx],'3'
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '6'

    popa
    ret

setversion83 endp

setversion84 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 1960
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],' '

    mov bx,2600
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '3'
    mov byte ptr es:[bx+22], ' '

    popa
    ret

setversion84 endp

setversion85 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '3'
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '5'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '2'
    ;mov byte ptr es:[bx+60], '6'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '1'

    mov bx, 1320
    mov byte ptr es:[bx], '5' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    ;mov byte ptr es:[bx+20], '7'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '8'
    ;mov byte ptr es:[bx+42], ' '
    ;mov byte ptr es:[bx+60], '2'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '9'
    ;mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx],' '
    mov byte ptr es:[bx+2],' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '9'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '0'
    ;mov byte ptr es:[bx+60], '1'
    ;mov byte ptr es:[bx+62], '4'
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '7'

    mov bx,2600
    mov byte ptr es:[bx],'1'
    mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '3'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '6'
    ;mov byte ptr es:[bx+60], '4'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion85 endp

setversion86 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '3'
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '5'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '2'
    ;mov byte ptr es:[bx+60], '6'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '1'

    mov bx, 1320
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '8'
    ;mov byte ptr es:[bx+42], ' '
    ;mov byte ptr es:[bx+60], '2'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '9'
    ;mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    mov byte ptr es:[bx],'5'
    mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '9'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '0'
    ;mov byte ptr es:[bx+60], '1'
    ;mov byte ptr es:[bx+62], '4'
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '7'

    mov bx,2600
    ;mov byte ptr es:[bx],'1'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '3'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '6'
    ;mov byte ptr es:[bx+60], '4'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion86 endp

setversion87 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], ' ' ;BX+even number
    mov byte ptr es:[bx+2], ' '
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '5'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '2'
    ;mov byte ptr es:[bx+60], '6'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '1'

    mov bx, 1320
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '3'
    ;mov byte ptr es:[bx+20], '7'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '8'
    ;mov byte ptr es:[bx+42], ' '
    ;mov byte ptr es:[bx+60], '2'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '9'
    ;mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    ;mov byte ptr es:[bx],'5'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '9'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '0'
    ;mov byte ptr es:[bx+60], '1'
    ;mov byte ptr es:[bx+62], '4'
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '7'

    mov bx,2600
    ;mov byte ptr es:[bx],'1'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '3'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '6'
    ;mov byte ptr es:[bx+60], '4'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion87 endp

setversion88 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    mov byte ptr es:[bx], '1' ;BX+even number
    mov byte ptr es:[bx+2], '5'
    mov byte ptr es:[bx+20], ' '
    mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '1'
    mov byte ptr es:[bx+42], '2'
    ;mov byte ptr es:[bx+60], '6'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '1'

    mov bx, 1320
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '3'
    mov byte ptr es:[bx+20], '7'
    mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '8'
    ;mov byte ptr es:[bx+42], ' '
    ;mov byte ptr es:[bx+60], '2'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '9'
    ;mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    ;mov byte ptr es:[bx],'5'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '9'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '0'
    ;mov byte ptr es:[bx+60], '1'
    ;mov byte ptr es:[bx+62], '4'
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '7'

    mov bx,2600
    ;mov byte ptr es:[bx],'1'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '3'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '6'
    ;mov byte ptr es:[bx+60], '4'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion88 endp

setversion89 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '5'
    mov byte ptr es:[bx+20], '1'
    mov byte ptr es:[bx+22], '2'
    mov byte ptr es:[bx+40], ' '
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '6'
    mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '1'

    mov bx, 1320
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '3'
    ;mov byte ptr es:[bx+20], '7'
    ;mov byte ptr es:[bx+22], ' '
    mov byte ptr es:[bx+40], '8'
    mov byte ptr es:[bx+42], ' '
    ;mov byte ptr es:[bx+60], '2'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '9'
    ;mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    ;mov byte ptr es:[bx],'5'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '9'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '0'
    ;mov byte ptr es:[bx+60], '1'
    ;mov byte ptr es:[bx+62], '4'
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '7'

    mov bx,2600
    ;mov byte ptr es:[bx],'1'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '3'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '6'
    ;mov byte ptr es:[bx+60], '4'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion89 endp

setversion90 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '5'
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '2'
    mov byte ptr es:[bx+40], '6'
    mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], ' '
    mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '1'
    mov byte ptr es:[bx+82], '1'

    mov bx, 1320
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '3'
    ;mov byte ptr es:[bx+20], '7'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '8'
    ;mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '2'
    mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '9'
    ;mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    ;mov byte ptr es:[bx],'5'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '9'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '0'
    ;mov byte ptr es:[bx+60], '1'
    ;mov byte ptr es:[bx+62], '4'
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '7'

    mov bx,2600
    ;mov byte ptr es:[bx],'1'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '3'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '6'
    ;mov byte ptr es:[bx+60], '4'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion90 endp

setversion91 proc

    pusha
    mov ax,@data
    mov ds,ax

    mov bx, 680
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '5'
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '2'
    ;mov byte ptr es:[bx+40], '6'
    ;mov byte ptr es:[bx+42], ' '
    mov byte ptr es:[bx+60], '1'
    mov byte ptr es:[bx+62], '1'
    mov byte ptr es:[bx+80], ' '
    mov byte ptr es:[bx+82], ' '

    mov bx, 1320
    ;mov byte ptr es:[bx], '1' ;BX+even number
    ;mov byte ptr es:[bx+2], '3'
    ;mov byte ptr es:[bx+20], '7'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '8'
    ;mov byte ptr es:[bx+42], ' '
    ;mov byte ptr es:[bx+60], '2'
    ;mov byte ptr es:[bx+62], ' '
    mov byte ptr es:[bx+80], '9'
    mov byte ptr es:[bx+82], ' '

    mov bx, 1960
    ;mov byte ptr es:[bx],'5'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '1'
    ;mov byte ptr es:[bx+22], '9'
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '0'
    ;mov byte ptr es:[bx+60], '1'
    ;mov byte ptr es:[bx+62], '4'
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '7'

    mov bx,2600
    ;mov byte ptr es:[bx],'1'
    ;mov byte ptr es:[bx+2],' '
    ;mov byte ptr es:[bx+20], '3'
    ;mov byte ptr es:[bx+22], ' '
    ;mov byte ptr es:[bx+40], '1'
    ;mov byte ptr es:[bx+42], '6'
    ;mov byte ptr es:[bx+60], '4'
    ;mov byte ptr es:[bx+62], ' '
    ;mov byte ptr es:[bx+80], '1'
    ;mov byte ptr es:[bx+82], '8'

    popa
    ret

setversion91 endp

setversion92 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '9'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '7'
     popa
     ret

setversion92 endp


setversion93 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '7'
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '8'

     popa
     ret

setversion93 endp


setversion94 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '8'
     mov bx, 2600
     mov byte ptr es:[bx+60], '4'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion94 endp


setversion95 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov bx, 2600
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '6'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion95 endp


setversion96 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '0'
     mov bx, 2600
     mov byte ptr es:[bx+20], '3'
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '6'
     popa
     ret

setversion96 endp


setversion97 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '3'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion97 endp


setversion98 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx], '5'
     mov byte ptr es:[bx+2], ' '
     mov bx, 2600
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion98 endp


setversion99 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '3'
     mov bx, 1960
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '5'
     mov byte ptr es:[bx+2], ' '
     popa
     ret

setversion99 endp


setversion100 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '5'
     mov bx, 1320
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '3'
     popa
     ret

setversion100 endp


setversion101 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '2'
     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '5'
     popa
     ret

setversion101 endp


setversion102 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '6'
     mov byte ptr es:[bx+42], ' '
     mov bx, 1320
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion102 endp


setversion103 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+20], '6'
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '1'
     mov bx, 1320
     mov byte ptr es:[bx+40], '8'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion103 endp


setversion104 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '1'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '9'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion104 endp


setversion105 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+60], '9'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '7'
     popa
     ret

setversion105 endp


setversion106 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '7'
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '8'
     popa
     ret

setversion106 endp


setversion107 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '8'
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion107 endp


setversion108 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '6'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion108 endp


setversion109 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov bx, 2600
     mov byte ptr es:[bx+40], '3'
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'

     popa
     ret

setversion109 endp


setversion110 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '0'
     mov bx, 2600
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '3'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion110 endp


setversion111 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '5'
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion111 endp


setversion112 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '3'
     mov bx, 2600
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '5'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion112 endp


setversion113 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '5'
     mov bx, 1960
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '3'
     popa
     ret

setversion113 endp


setversion114 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     mov bx, 1320
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '5'
     popa
     ret

setversion114 endp


setversion115 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '6'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     popa
     ret

setversion115 endp


setversion116 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '1'
     mov bx, 1320
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion116 endp


setversion117 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '1'
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '9'
     mov byte ptr es:[bx+62], ' '
     mov bx, 1320
     mov byte ptr es:[bx+40], '8'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion117 endp


setversion118 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+40], '9'
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '7'
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion118 endp


setversion119 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '7'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '8'
     popa
     ret

setversion119 endp


setversion120 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '8'
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion120 endp


setversion121 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'

     popa
     ret

setversion121 endp


setversion122 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'
     mov bx, 2600
     mov byte ptr es:[bx+60], '3'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion122 endp


setversion123 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov bx, 2600
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion123 endp


setversion124 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '0'
     mov bx, 2600
     mov byte ptr es:[bx+20], '5'
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion124 endp


setversion125 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '3'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '5'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion125 endp


setversion126 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '5'
     mov bx, 2600
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '3'
     popa
     ret

setversion126 endp


setversion127 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     mov bx, 1960
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '5'
     popa
     ret

setversion127 endp


setversion128 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     mov bx, 1320
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     popa
     ret

setversion128 endp


setversion129 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '1'
     mov bx, 1320
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     popa
     ret

setversion129 endp


setversion130 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '9'
     mov byte ptr es:[bx+42], ' '
     mov bx, 1320
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion130 endp


setversion131 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+20], '9'
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '7'
     mov bx, 1320
     mov byte ptr es:[bx+40], '8'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion131 endp


setversion132 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '7'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '8'
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion132 endp


setversion133 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '8'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion133 endp


setversion134 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'
     popa
     ret

setversion134 endp


setversion135 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion135 endp


setversion136 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion136 endp


setversion137 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov bx, 2600
     mov byte ptr es:[bx+40], '5'
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion137 endp


setversion138 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '0'
     mov bx, 2600
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '3'
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '5'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion138 endp


setversion139 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '5'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '3'
     popa
     ret

setversion139 endp


setversion140 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     mov bx, 2600
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '5'
     popa
     ret

setversion140 endp


setversion141 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     mov bx, 1960
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     popa
     ret

setversion141 endp


setversion142 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     mov bx, 1320
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1960
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     popa
     ret

setversion142 endp


setversion143 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '9'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     popa
     ret

setversion143 endp


setversion144 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '9'
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '7'
     mov bx, 1320
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion144 endp


setversion145 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '7'
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '8'
     mov bx, 1320
     mov byte ptr es:[bx+40], '8'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion145 endp


setversion146 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '8'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '4'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion146 endp


setversion147 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+60], '4'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'
     popa
     ret

setversion147 endp


setversion148 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion148 endp


setversion149 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion149 endp


setversion150 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '1'
     mov bx, 2600
     mov byte ptr es:[bx+60], '5'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion150 endp


setversion151 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov bx, 2600
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '3'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '5'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion151 endp


setversion152 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '0'
     mov bx, 2600
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '5'
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '3'
     popa
     ret

setversion152 endp


setversion153 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '2'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '5'
     popa
     ret

setversion153 endp


setversion154 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     mov bx, 2600
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '2'
     popa
     ret

setversion154 endp


setversion155 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     mov bx, 1960
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     popa
     ret

setversion155 endp


setversion156 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '9'
     mov byte ptr es:[bx+2], ' '
     mov bx, 1320
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     popa
     ret

setversion156 endp


setversion157 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '7'
     mov bx, 1320
     mov byte ptr es:[bx], '9'
     mov byte ptr es:[bx+2], ' '
     popa
     ret

setversion157 endp


setversion158 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '7'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '8'
     mov bx, 1320
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion158 endp


setversion159 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '8'
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '4'
     mov byte ptr es:[bx+62], ' '
     mov bx, 1320
     mov byte ptr es:[bx+40], '8'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion159 endp


setversion160 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+40], '4'
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '6'
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion160 endp


setversion161 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '6'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion161 endp


setversion162 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion162 endp


setversion163 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '5'
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion163 endp


setversion164 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+80], '5'
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '3'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion164 endp


setversion165 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov bx, 2600
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '5'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '3'

     popa
     ret

setversion165 endp


setversion166 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '0'
     mov bx, 2600
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '2'
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '5'
     popa
     ret

setversion166 endp


setversion167 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '6'
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '2'
     popa
     ret

setversion167 endp


setversion168 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     mov bx, 2600
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '6'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion168 endp


setversion169 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx], '9'
     mov byte ptr es:[bx+2], ' '
     mov bx, 1960
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     popa
     ret

setversion169 endp


setversion170 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '7'
     mov bx, 1320
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1960
     mov byte ptr es:[bx], '9'
     mov byte ptr es:[bx+2], ' '
     popa
     ret

setversion170 endp


setversion171 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '8'
     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '7'
     popa
     ret

setversion171 endp


setversion172 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '8'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '4'
     mov byte ptr es:[bx+42], ' '
     mov bx, 1320
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion172 endp


setversion173 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+20], '4'
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '6'
     mov bx, 1320
     mov byte ptr es:[bx+40], '8'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion173 endp


setversion174 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '6'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '3'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion174 endp


setversion175 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+60], '3'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion175 endp


setversion176 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '5'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion176 endp


setversion177 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '5'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '3'

     popa
     ret

setversion177 endp


setversion178 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '3'
     mov bx, 2600
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '5'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '

     popa
     ret

setversion178 endp


setversion179 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov bx, 2600
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '2'
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '5'

     popa
     ret

setversion179 endp


setversion180 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '0'
     mov bx, 2600
     mov byte ptr es:[bx+20], '6'
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '2'
     popa
     ret

setversion180 endp


setversion181 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '1'
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '6'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion181 endp


setversion182 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1960
     mov byte ptr es:[bx], '9'
     mov byte ptr es:[bx+2], ' '
     mov bx, 2600
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '1'
     popa
     ret

setversion182 endp


setversion183 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '7'
     mov bx, 1960
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '9'
     mov bx, 2600
     mov byte ptr es:[bx], '9'
     mov byte ptr es:[bx+2], ' '
     popa
     ret

setversion183 endp


setversion184 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '8'
     mov bx, 1320
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1960
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '7'
     popa
     ret

setversion184 endp


setversion185 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], ' '
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], '4'
     mov byte ptr es:[bx+22], ' '
     mov bx, 1320
     mov byte ptr es:[bx], '1'
     mov byte ptr es:[bx+2], '8'
     popa
     ret

setversion185 endp


setversion186 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx], '4'
     mov byte ptr es:[bx+2], ' '
     mov byte ptr es:[bx+20], ' '
     mov byte ptr es:[bx+22], ' '
     mov byte ptr es:[bx+40], '1'
     mov byte ptr es:[bx+42], '6'
     mov bx, 1320
     mov byte ptr es:[bx+20], '7'
     mov byte ptr es:[bx+22], ' '
     popa
     ret

setversion186 endp


setversion187 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+20], '1'
     mov byte ptr es:[bx+22], '6'
     mov byte ptr es:[bx+40], ' '
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], '3'
     mov byte ptr es:[bx+62], ' '
     mov bx, 1320
     mov byte ptr es:[bx+40], '8'
     mov byte ptr es:[bx+42], ' '
     popa
     ret

setversion187 endp


setversion188 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+40], '3'
     mov byte ptr es:[bx+42], ' '
     mov byte ptr es:[bx+60], ' '
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     popa
     ret

setversion188 endp


setversion189 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+80], '5'
     mov byte ptr es:[bx+82], ' '
     popa
     ret

setversion189 endp


setversion190 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 680
     mov byte ptr es:[bx+80], '5'
     mov byte ptr es:[bx+82], ' '
     mov bx, 1320
     mov byte ptr es:[bx+60], '2'
     mov byte ptr es:[bx+62], ' '
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 1960
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '3'
     popa
     ret

setversion190 endp


setversion191 proc

     pusha
     mov ax,@data
     mov ds,ax

     mov bx, 1320
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '3'
     mov bx, 1960
     mov byte ptr es:[bx+60], '1'
     mov byte ptr es:[bx+62], '4'
     mov byte ptr es:[bx+80], ' '
     mov byte ptr es:[bx+82], ' '
     mov bx, 2600
     mov byte ptr es:[bx+80], '1'
     mov byte ptr es:[bx+82], '5'

     popa
     ret

setversion191 endp

;too mnany cases to consider



nocursor proc

    pusha

    mov ah,3
    int 10h
    or ch,30h
    mov ah,1
    int 10h

    popa
    ret

nocursor endp

clearscr proc

    pusha

    mov ax,0b800h
    mov cx,25*80
    sub bx,bx
    mov ax,0720h
    clearL:
        mov es:[bx],ax
        add bx,2
        loop clearL


    popa
    ret

clearscr endp

END main
