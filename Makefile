default:  print_mpz gmp-chudnovsky

print_mpz: print_mpz.c
	${CC} -g -O0 -o $@ $< -lgmp -I/usr/local/include -L/usr/local/lib

gmp-chudnovsky: gmp-chudnovsky.c
	${CC} -g -O0 -o $@ $< -lgmp -lm -I/usr/local/include -L/usr/local/lib

#'-' before command ignores the command's failure
clean:
	-rm -rf *.dSYM
	-rm print_mpz gmp-chudnovsky
	-rm compile_commands.json
