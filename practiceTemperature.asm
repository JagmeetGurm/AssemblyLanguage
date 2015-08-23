; This program will convert celsius degree to farenheit 

; preprocessor
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096

.DATA 
; variables for prompt and taking input 
promptOne BYTE "Enter temperature in Celsius: ", 0
promptTwo BYTE "Enter 2nd temperature in celsius: ", 0
promptThree BYTE "Enter 3rd temp. in Celsius: ", 0
celStr BYTE 40 DUP (?)
celStr2 BYTE 40 DUP (?)
celStr3 BYTE 40 DUP (?)


; output label and variable
labl BYTE "The temp in Farenheit is: ", 0
farStr BYTE 11 DUP (?)

; variables for storing values
celVar DWORD ?
farVar DWORD ?



;code for taking input value and converting to farenheit
.CODE
_MainProc PROC

input promptOne, celStr, 40
atod celStr
mov celVar, eax


