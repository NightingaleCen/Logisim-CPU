ori $1,$0,8
nop
nop
nop
nop
ori $2,$0,9
nop
nop
nop
nop
lui $3,3014
nop
nop
nop
nop
addu $4,$1,$2
nop
nop
nop
nop
subu $5,$2,$1
nop
nop
nop
nop
ori $6,$0,8
nop
nop
nop
nop
beq $1,$6,label1
nop
nop
nop
nop
ori $7,$0,1
nop
nop
nop
nop
j label2
nop
nop
nop
nop
label1:
ori $8,$0,1
nop
nop
nop
nop
j label2
nop
nop
nop
nop
ori $9,$0,1
nop
nop
nop
nop
label2:
ori $10,$0,1
nop
nop
nop
nop
jal label3
nop
nop
nop
nop
ori $11,$0,1
nop
nop
nop
nop
label3:
ori $12,$0,1
nop
nop
nop
nop
label_end:
beq $0, $0, label_end
nop
nop
nop
nop
nop