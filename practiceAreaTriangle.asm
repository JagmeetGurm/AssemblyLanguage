;program to calculate area of triangle

;preprocessor
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096	

.DATA
; variables declaration

;two prompts for entering the base and alt of triangle
promptOne BYTE "Enter the base of triangle: ", 0
promptTwo BYTE "Enter the altitude of triangle: ", 0

;two variables for storing input values
len DWORD ?
alt DWORD ?

;two byte variables for taking input
valOne  BYTE 40 DUP (?)
valTwo BYTE 40 DUP (?)

;output label and variable for displaying result
labl BYTE "The area of triangle is: ", 0
area BYTE 11 DUP (?)
 

; Code part of the progam
.CODE
_MainProc Proc

; input prompt and the value
input promptOne, valOne, 40
atod valOne
mov len, eax

;input prompt and the 2nd value
input promptTwo, valTwo, 40
atod valTwo
mov alt, eax

;multiplication
mul len

;mov ecx, 2
;mul ecx
dtoa area, eax

;output label and value
output labl, area

mov eax, 0
ret
_MainProc ENDP
END

;
