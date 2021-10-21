#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define iowr(addr, data) (*((volatile uint32_t *)(addr)) = data)
#define iord(addr)       (*((volatile uint32_t *)(addr)))

void delay(unsigned int t)
{
	volatile uint32_t i, j;
	for(i = 0; i < t; i++)
		for(j = 0; j < 1024; j++);
}

int main(void)
{
    uint32_t i;

    for(i = 0; i < 0x1000; ++i) {
        iowr(0x1000 + i*4, i);
    }

	return 0;
}
