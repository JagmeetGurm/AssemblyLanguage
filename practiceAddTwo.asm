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


