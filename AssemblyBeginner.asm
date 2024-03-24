; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -felf64 hello.asm && ld hello.o && ./a.out
; ----------------------------------------------------------------------------------------
.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 

sum DWORD?

.code 
main proc
	mov eax 7
	add eax 4
	mov sum, eax

	invoke ExitProcess, 0

main endp
end main	