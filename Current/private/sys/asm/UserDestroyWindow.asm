; Hc/NtUserDestroyWindow
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserDestroyWindow:DWORD

.DATA
.CODE

HcUserDestroyWindow PROC
	mov r10, rcx
	mov eax, sciUserDestroyWindow
	syscall
	ret
HcUserDestroyWindow ENDP

ELSE
; 32bit

EXTERNDEF C sciUserDestroyWindow:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserDestroyWindow PROC
	mov eax, sciUserDestroyWindow
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserDestroyWindow ENDP

ENDIF

END