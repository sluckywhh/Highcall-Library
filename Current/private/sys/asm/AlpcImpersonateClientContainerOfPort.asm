; Hc/NtAlpcImpersonateClientContainerOfPort
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciAlpcImpersonateClientContainerOfPort:DWORD

.DATA
.CODE

HcAlpcImpersonateClientContainerOfPort PROC
	mov r10, rcx
	mov eax, sciAlpcImpersonateClientContainerOfPort
	syscall
	ret
HcAlpcImpersonateClientContainerOfPort ENDP

ELSE
; 32bit

EXTERNDEF C sciAlpcImpersonateClientContainerOfPort:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcAlpcImpersonateClientContainerOfPort PROC
	mov eax, sciAlpcImpersonateClientContainerOfPort
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
HcAlpcImpersonateClientContainerOfPort ENDP

ENDIF

END