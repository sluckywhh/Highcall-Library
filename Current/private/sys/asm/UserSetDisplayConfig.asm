; Hc/NtUserSetDisplayConfig
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetDisplayConfig:DWORD

.DATA
.CODE

HcUserSetDisplayConfig PROC
	mov r10, rcx
	mov eax, sciUserSetDisplayConfig
	syscall
	ret
HcUserSetDisplayConfig ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetDisplayConfig:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetDisplayConfig PROC
	mov eax, sciUserSetDisplayConfig
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
HcUserSetDisplayConfig ENDP

ENDIF

END