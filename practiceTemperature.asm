; This program will convert celsius degree to farenheit AND 
;also calculate the avg of 3 values in Celsius.

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
labl BYTE "The temp output is: ", 0
outCel BYTE "Celsius temp: ", 0
outFar BYTE "Farenheit temp: ", 0
outAvg BYTE "Avg temp in C: ", 0
outString BYTE 250 DUP (?)


outCelStr BYTE 11 DUP (?)
outCelStr2 BYTE 11 DUP (?)
outCelStr3 BYTE 11 DUP (?)
farStr BYTE 11 DUP (?)
fartStr2 BYTE 11 DUP (?)
farStr3 BYTE 11 DUP (?)
avg BYTE 11 DUP (?)




; variables for storing values
celVar DWORD ?
celVar2 DWORD ?
celVar3 DWORD ?

farVar DWORD ?
farVar2 DWORD ?
farVar3 DWORD ?





;code for taking input value and converting to farenheit
.CODE
_MainProc PROC

input promptOne, celStr, 40
atod celStr
mov celVar, eax
dtoa , eax


_MainProc ENDP
END