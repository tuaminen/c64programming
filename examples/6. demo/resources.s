

.SEGMENT "RODATA";

.export _MUSIC_DATA_ADDR
	_MUSIC_DATA_ADDR: .incbin     "ghosttrackers_7000.bin"

.export _MUSIC_DATA_ADDR_END
	_MUSIC_DATA_ADDR_END: 
	