; getting used to assembly programming again
;This program will add two numbers

.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096	

.DATA
; we need two variables to store numbers
varOne DWORD ?
varTwo DWORD ?

; two prompts asking user to enter his value
promptOne BYTE "Enter the first no:  ", 0
promptTwo BYTE "Enter the 2nd no: ", 0

; two byte variables to take input values as byte
strOne BYTE 40 DUP (?)
strTwo BYTE 40 DUP (?)


; the output label
label BYTE "the addition of two nos is: ", 0
sum BYTE 11 DUP (?)


.CODE 
_MainProc PROC

;taking the first no as input and moving it in varOne variable
input promptOne, strOne, 40
atod strOne
mov varOne, eax

; 2nd value input and moving it into variable
input promptTwo, strTwo, 40
atod strTwo
mov varTwo, eax



