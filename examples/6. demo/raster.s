
; Playroutine addr is set when exporting music from GoatTracker (pressing F9 -> .bin)
PLAYROUTINE_ADDR = $7000

.export _initraster
			
_initraster:    
				; Disable interrupts
				sei

				; Set interrupt vector to point to "raster" routine below
                lda #<raster
                sta $0314
                lda #>raster
                sta $0315

				; Set low bits of raster position
                lda #50                         
                sta $d012                       

				; Set high bit of raster position (0)
                lda $d011
                and #$7f                        
                sta $d011                       
				
				; Set timer interrupt off
                lda #$7f                        
                sta $dc0d
                
				; Set raster interrupt on
				lda #$01
                sta $d01a
                
				; Acknowledge timer interrupt
				lda $dc0d                       
                
				; Enable interrupts
				cli

                rts

raster:         
				; Play music
                jsr PLAYROUTINE_ADDR+3          


				; acknowledge IRQ
				dec $d019
                
				; Jump to the beginning KERNAL's standard interrupt service routine
				jmp $ea31
				