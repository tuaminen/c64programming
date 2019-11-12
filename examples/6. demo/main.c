#include <stdio.h>
#include <string.h>

#define BORDER_ADDR 53280L

extern const char MUSIC_DATA_ADDR[];
extern const char MUSIC_DATA_ADDR_END[];
#define MUSIC_DATA_SIZE (MUSIC_DATA_ADDR_END - MUSIC_DATA_ADDR)

extern const char initraster[];


void initMusic() {
	
	// Copy music data & code to 0x7000
	memcpy((void*)0x7000, MUSIC_DATA_ADDR, MUSIC_DATA_SIZE);
		
	// Music player: Init song #0
	__asm__("lda #0");
	__asm__("jsr $7000"); // Reads song number from register A
	
	// Init raster interrupt & where music playing is done
	__asm__("jsr %v", initraster); 
}


void main(void) {
	
	char i = 0;
	char* targetPtr = (char*)BORDER_ADDR;
	
	initMusic();
	
	// Color loop
	while (1) {
		*targetPtr = i;
		i++;
	}
}
