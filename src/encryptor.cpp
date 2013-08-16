#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

/* qwer */

//const unsigned int key = 0x38F055AA;
unsigned int key;

int main()
{
	key += ('q' << 24);
	key += ('w' << 16);
	key += ('e' << 8);
	key += ('r');

	printf("%x\n",key);

	int fIn = open("executable.bin",O_RDWR);
	
	if(fIn <= 0)
	{
		printf("error opening input file\n");
		exit(-1);
	}
	
	int fOut = open("code-cripted.bin",O_RDWR | O_CREAT, 0777);
	
	if(fOut <= 0)
	{
		printf("error opening output file\n");
		exit(-1);
	}

	printf("begin cripting\n");
	
	unsigned int buffer;
	unsigned int size;
	
	while((size = read(fIn,&buffer,sizeof(unsigned int))) > 0)
	{
		printf("%x ",buffer);
		buffer ^= key;
		write(fOut,&buffer,size);
		buffer = 0;
	}

	close(fIn);
	close(fOut);

	printf("done\n");

	return 0;
}
