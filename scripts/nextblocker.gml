//vars
nextblockcol = 0
currentblockcol = 0
nextblockalong = obj_basicblock//launcher
nextblockdisplay = obj_nextblock//the block that shows the next one

//randomizer
nextblockcol = irandom_range(0,(array_length_1d(colours)-1))//select next random colour

//set colour on launcher
nextblockalong.blockcolour = nextblockdisplay.blockcolour //set launcher colour to current display

nextblockdisplay.blockcolour = nextblockcol //change display to random value generated earlier
