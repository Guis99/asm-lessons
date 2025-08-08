global getInt_changed

section .text
getInt_changed: 
	xor eax, eax
	test edi, edi
	jle .done

	mov edx, edi
	mov ecx, 1
.loop:
	add eax, ecx
	inc ecx
	cmp ecx, edx 
	jle .loop

.done:
	ret
