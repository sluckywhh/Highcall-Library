; Hc/NtUserRemoteRedrawScreen
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserRemoteRedrawScreen:DWORD

.DATA
.CODE

HcUserRemoteRedrawScreen PROC
	mov r10, rcx
	mov eax, sciUserRemoteRedrawScreen
	syscall
	ret
HcUserRemoteRedrawScreen ENDP

ELSE
; 32bit

EXTERNDEF C sciUserRemoteRedrawScreen:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserRemoteRedrawScreen PROC
	mov eax, sciUserRemoteRedrawScreen
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
HcUserRemoteRedrawScreen ENDP

ENDIF

END