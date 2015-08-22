;program to calculate area of triangle

;preprocessor
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096	

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
 