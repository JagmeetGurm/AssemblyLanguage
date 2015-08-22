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

;two variables