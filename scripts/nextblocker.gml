//vars
nextblockcol = 0

nextblockalong = obj_basicblock//launcher

nextblockdisplay = obj_nextblock//the block that shows the next one
nextblockdisplay1 = obj_nextblock2//the block that shows the next one
nextblockdisplay2 = obj_nextblock3//the block that shows the next one
nextblockdisplay3 = obj_nextblock4//the block that shows the next one
//randomizer
nextblockcol = irandom_range(0,(array_length_1d(colours)-1))//select next random colour

//set colour on launcher
if argument0{ 
nextblockdisplay.blockcolour = nextblockdisplay1.blockcolour
nextblockdisplay1.blockcolour = nextblockdisplay2.blockcolour   
nextblockdisplay2.blockcolour = nextblockdisplay3.blockcolour   
nextblockdisplay3.blockcolour = nextblockcol
}
else{
nextblockalong.blockcolour = nextblockdisplay.blockcolour 
nextblockdisplay.blockcolour = nextblockdisplay1.blockcolour
nextblockdisplay1.blockcolour = nextblockdisplay2.blockcolour   
nextblockdisplay2.blockcolour = nextblockdisplay3.blockcolour   
nextblockdisplay3.blockcolour = nextblockcol
}
