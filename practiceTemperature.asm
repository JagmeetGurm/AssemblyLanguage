; This program will convert celsius degree to farenheit 

; preprocessor
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096


; variables for prompt and taking input 
promptOne BYTE "Enter temperature in Celsius: ", 0
celStr BYTE 40 DUP (?)


; output label and variable
labl BYTE "The temp in Farenheit is: ", 0
farStr BYTE 11 DUP (?)

; variables for storing values
