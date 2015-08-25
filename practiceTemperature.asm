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
farStr2 BYTE 11 DUP (?)
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
mov celVar, eax ; stored the celsius val in variable after converting it to double 
dtoa outCelStr, eax ;converting dword to string for storing again

input promptTwo, celStr2, 40
atod celStr2 
mov celVar2, eax 
dtoa outCelStr2, eax

input promptThree, celStr3, 40
atod celStr3
mov celVar3, eax
dtoa outCelStr3, eax

mov ebx, 9; preparing for c to f conversion
mov ecx, 5

mov eax, celVar; moving cel to eax registera nd then multiply
imul ebx
cdq
idiv ecx; dividing by 5 

add eax, 32 ; adding 32 
; now eax contains the final value in DWORD in farenheit
mov farVar, eax
dtoa farStr, eax

; converting the 2nd value
mov eax, celVar2
imul ebx
cdq
idiv ecx
add eax, 32
mov farVar2, eax
dtoa farStr2, eax

;converting the 3rd value
mov eax, celVar3
imul ebx
cdq
idiv ecx
add eax, 32
mov farVar3, eax
dtoa farStr3, eax

;calculating the average
add eax, farVar2
add eax, farVar; total moved in eax
cdq
mov ecx, 3

idiv ecx
dtoa avg, eax

;lets print out the output
lea esi, outCel
lea edi, outString
cld
mov ecx, 14
rep movsb
mov outString + 14, 20H

; now lets print out the value 
lea esi, outCelStr
lea edi, outString+ 14+1
cld
mov ecx, 11
rep movsb
mov outString + 26, 20H

;print another value
lea esi, outCelStr2
lea edi, outString + 27
cld 
mov ecx, 11
rep movsb
mov outString + 38, 20H


;printing values in farenheit
;print another value
lea esi, outCelStr3
lea edi, outString + 39
cld 
mov ecx, 11
rep movsb
mov outString + 50, 20H
mov outString + 50, 0DH

lea esi, outFar
lea edi, outString +51
cld
mov ecx, 16
rep movsb
mov outString+67, 20H

lea esi, farStr
lea edi, outString + 68
cld
mov ecx, 11
rep movsb
mov outString+ 79, 20H

lea esi, farStr2
lea edi, outString + 80
cld
mov ecx, 11
rep movsb
mov outString + 91, 20H

lea esi, farStr3
lea edi, outString + 92
cld
mov ecx, 11
rep movsb
mov outString + 103, 20H
mov outString + 103, 0DH


lea esi, outAvg
lea edi, outString +104
cld
mov ecx, 14
rep movsb
mov outString+ 118, 20H

lea esi, avg
lea edi, outString + 119
cld
mov ecx, 11
rep movsb
mov outString + 130, 20H






 

 output labl, outString
 ret
_MainProc ENDP
END