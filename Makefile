default:  print_mpz gmp-chudnovsky

print_mpz: print_mpz.c
	${CC} -g -O0 -o $@ $< -lgmp

gmp-chudnovsky: gmp-chudnovsky.c
	${CC} -g -O0 -o $@ $< -lgmp

#'-' before command ignores the command's failure
clean:
	-rm -rf *.dSYM
	-rm print_mpz gmp-chudnovsky
	-rm compile_commands.json
