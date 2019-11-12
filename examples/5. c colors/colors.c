#include <stdio.h>

#define BORDER_ADDR 53280L

void main(void)
{
	char i = 0;
	char* targetPtr = (char*)BORDER_ADDR;
	while (1) {
		*targetPtr = i;
		i++;
	}
}
