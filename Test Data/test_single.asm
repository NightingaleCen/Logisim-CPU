ori $0, $0, 0xffff #测试ori
lui $1, 0xffff #测试lui
ori $1, $1, 0xffff #使$1写入0xffffffff
ori $2, $0, 0x114 
andi $3, $1, 0x514 #测试andi
addu $4, $2, $3 #测试addu
subu $5, $2, $3 #测试subu
or $6, $2, $3 #测试or
and $7, $2, $3 #测试and
slt $8, $2, $3 #测试slt
sll $9, $2, 8 #测试sll
#测试beq, j
ori $10, $0, 4
ori $11, $0, 64
loop:
beq $10, $11, end_loop
sw $1, -4($10) #测试sw，考虑offset为负
addu $10, $10, $10
j loop
end_loop:
subu $10, $10, $2
lw $12, 0xd4($10) #测试lw，考虑base为负
#测试bne
bne $1, $12, test_bne1
ori $12, $0, 0x1f1f
test_bne1:
bne $1, $12, test_bne2
ori $12, $0, 0xffff
test_bne2: #如果bne有效，最终$12值应该为0x1f1f