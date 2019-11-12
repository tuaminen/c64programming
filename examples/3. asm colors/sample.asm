		processor 6502
		org $1000
		
		lda #0  ; A = 0
		
looppi:
		sta 53280 ; 53280=a
		adc #1 ; a=a+1
		sta 53280 ; 53280=a
		adc #1 ; a=a+1
		sta 53280 ; 53280=a
		adc #1 ; a=a+1
		sta 53280 ; 53280=a
		adc #1 ; a=a+1
		
		jmp looppi
		
		
		
		
		