; Hc/NtGdiRemoveFontResourceW
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiRemoveFontResourceW:DWORD

.DATA
.CODE

HcGdiRemoveFontResourceW PROC
	mov r10, rcx
	mov eax, sciGdiRemoveFontResourceW
	syscall
	ret
HcGdiRemoveFontResourceW ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiRemoveFontResourceW:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiRemoveFontResourceW PROC
	mov eax, sciGdiRemoveFontResourceW
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
HcGdiRemoveFontResourceW ENDP

ENDIF

END