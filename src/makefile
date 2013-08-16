all: program cript make_cript executable link

program:
	nasm -fbin executable.asm -o executable.bin

cript:
	c++ encryptor.cpp -o encryptor

make_cript:
	./encryptor

executable:
	nasm -felf main.asm -o main.o

link:
	mkdir -p ../bin
	ld main.o -o ../bin/program

clean:
	rm -f executable.bin code-cripted.bin encryptor ../bin/program main.o
