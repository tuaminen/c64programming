		processor 6502
		org $1000
		
		jsr $e544		;clear the screen
		
		lda #72			;load ascii value for H into A
		jsr $e716		;display H from A to screen
		
		lda #69			;load E into A
		jsr $e716		;display E
		
		lda #76			;load L into A
		jsr $e716		;display L
		jsr $e716		;display L
		
		lda #79			;load O into A
		jsr $e716		;display O
		
		lda #32			;load space into A
		jsr $e716               ;display space
		
		lda #87			;load W into A
		jsr $e716               ;display W
		
		lda #79			;load O into A
		jsr $e716               ;display O
		
		lda #82			;load R into A
		jsr $e716               ;display R
		
		lda #76			;load L into A
		jsr $e716               ;display L
		
		lda #68			;load D into A
		jsr $e716               ;display D
		
		rts                     ;return from subroutine