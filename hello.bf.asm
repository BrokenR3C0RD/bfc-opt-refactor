; opt-bfc output
org 100h

section .text 
start:
mov cx, 30000
xor ax, ax
mov di, t
cld
rep stosb

mov [p], word 0
mov bx, t
mov bx, word [p]
add [t + bx], byte 10

mov cx, word [p]
mov bx, cx
mov al, byte [t + bx]
mov ah, 7
mul ah
mov bx, word [p]
add bx, 1
mov dl, byte [t + bx]
sub dl, al
mov [t + bx], byte dl
mov bx, cx
mov al, byte [t + bx]
mov ah, 10
mul ah
mov bx, word [p]
add bx, 2
mov dl, byte [t + bx]
sub dl, al
mov [t + bx], byte dl
mov bx, cx
mov al, byte [t + bx]
mov ah, 3
mul ah
mov bx, word [p]
add bx, 3
mov dl, byte [t + bx]
sub dl, al
mov [t + bx], byte dl
mov bx, cx
mov al, byte [t + bx]
mov ah, 1
mul ah
mov bx, word [p]
add bx, 4
mov dl, byte [t + bx]
sub dl, al
mov [t + bx], byte dl
mov bx, cx
mov word [t + bx], 0

add word [p], 1

mov bx, word [p]
add [t + bx], byte 2

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

add word [p], 1

mov bx, word [p]
add [t + bx], byte 1

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

mov bx, word [p]
add [t + bx], byte 7

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

mov bx, word [p]
add [t + bx], byte 3

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

add word [p], 1

mov bx, word [p]
add [t + bx], byte 2

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

sub word [p], 2

mov bx, word [p]
add [t + bx], byte 15

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

add word [p], 1

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

mov bx, word [p]
add [t + bx], byte 3

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

mov bx, word [p]
sub [t + bx], byte 6

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

mov bx, word [p]
sub [t + bx], byte 8

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

add word [p], 1

mov bx, word [p]
add [t + bx], byte 1

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

add word [p], 1

mov al, 02h
mov bx, word [p]
mov dl, [t + bx]
int 21h

mov ah, 4Ch
mov al, 0
int 21h

getchar:
    xor ax, ax
    mov ah, 01h
    int 21h
    mov dl, ah
    ret

section .data 
    test_str db "Hello world!$"

section .bss 
    t resb 30000
    p resw 1