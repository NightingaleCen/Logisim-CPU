ori $2, $0, 0x114
jal func
jal end
ori $2, $0, 0x514
func:
	sw $31, 0($0)
	jr $31
end:
	ori $3, $0, 8
	sw $31, -4($3)
