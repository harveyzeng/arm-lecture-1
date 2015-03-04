	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push { lr}
        subs r4, r0, #0        // r4 = r0 - 0
        ble .L3        //if (r0 <= 0) goto .L3

        cmp r4, #1        // Compare r4 to 1
        beq .L4        // if (r4 == 1) goto .L4
	//moveq r0, #1
 	sub r4,r4,#1 //r4=r4-1 
	mov  r6,#1
        mov  r7,#0     
l1:     
	cmp r6,r7
	ite gt
	addgt r7,r6,r7
	addle r6,r6,r7
	subs r4,r4,#1 //r4=r4-1 
	bne  l1


	cmp r6,r7
	ite gt
	movgt r0,r6
	movle r0,r7
	
	pop {  pc}

	@ END CODE MODIFICATION
.L3:
mov r0, #0			@ R0 = 0
pop {  pc}
	

.L4:
mov r0, #1			@ R0 = 1
pop {  pc}
	

	.size fibonacci, .-fibonacci
	.end
