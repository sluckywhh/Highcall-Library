; Hc/NtGdiBRUSHOBJ_DeleteRbrush
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiBRUSHOBJ_DeleteRbrush:DWORD

.DATA
.CODE

HcGdiBRUSHOBJ_DeleteRbrush PROC
	mov r10, rcx
	mov eax, sciGdiBRUSHOBJ_DeleteRbrush
	syscall
	ret
HcGdiBRUSHOBJ_DeleteRbrush ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiBRUSHOBJ_DeleteRbrush:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiBRUSHOBJ_DeleteRbrush PROC
	mov eax, sciGdiBRUSHOBJ_DeleteRbrush
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
HcGdiBRUSHOBJ_DeleteRbrush ENDP

ENDIF

END