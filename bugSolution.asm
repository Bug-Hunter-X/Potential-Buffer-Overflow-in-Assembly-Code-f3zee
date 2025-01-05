mov ecx, [someVariable] ; Get the array index from some source
mov edx, arraySize ; Load the array size
cmp ecx, edx ; Compare the index with the array size
jge overflowCheck ; Jump to overflow handling if index is out of bounds
mov eax, [ebx + ecx*4 + 0x10] ; Access the array element if index is valid
jmp nextInstruction ; Jump to next instruction
overflowCheck:
; Handle the overflow error appropriately (e.g., return an error code)
nextInstruction: