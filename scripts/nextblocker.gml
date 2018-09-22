#define nextblocker
//vars
nextblockcol = 0

nextblockalong = obj_basicblock//launcher

blockdisplay[0] = obj_nextblock//the block that shows the next one
blockdisplay[1] = obj_nextblock2//the block that shows the next one
blockdisplay[2] = obj_nextblock3//the block that shows the next one
blockdisplay[3] = obj_nextblock4//the block that shows the next one
//randomizer

selnext()

//set colour on launcher
if argument0=1{ 
blockdisplay[0].blockcolour = blockdisplay[1].blockcolour
blockdisplay[1].blockcolour = blockdisplay[2].blockcolour   
blockdisplay[2].blockcolour = blockdisplay[3].blockcolour   
blockdisplay[3].blockcolour = nextblockcol
}
else if argument0=0{
nextblockalong.blockcolour = blockdisplay[0].blockcolour
blockdisplay[0].blockcolour = blockdisplay[1].blockcolour
blockdisplay[1].blockcolour = blockdisplay[2].blockcolour   
blockdisplay[2].blockcolour = blockdisplay[3].blockcolour   
blockdisplay[3].blockcolour = nextblockcol
}
else if argument0 = 2{
firstrandom()
}

#define selnext
nextblockcol = irandom_range(1,(array_length_1d(colours)-1))//select next random colour
#define firstrandom
var step = 0;
if step=0{
    blockdisplay[3].blockcolour = nextblockcol
    selnext()
    step++
    }
if step=1{
    blockdisplay[3].blockcolour = nextblockcol
    blockdisplay[2].blockcolour = blockdisplay[3].blockcolour 
    selnext()
    step++
    }
if step=2{
    blockdisplay[3].blockcolour = nextblockcol
    blockdisplay[2].blockcolour = blockdisplay[3].blockcolour 
    blockdisplay[1].blockcolour = blockdisplay[2].blockcolour 
    selnext()
    step++
    }
if step=3{
    blockdisplay[3].blockcolour = nextblockcol
    blockdisplay[2].blockcolour = blockdisplay[3].blockcolour 
    blockdisplay[1].blockcolour = blockdisplay[2].blockcolour 
    blockdisplay[0].blockcolour = blockdisplay[1].blockcolour
    selnext()
    step++
    }
if step=4{
    blockdisplay[3].blockcolour = nextblockcol
    blockdisplay[2].blockcolour = blockdisplay[3].blockcolour 
    blockdisplay[1].blockcolour = blockdisplay[2].blockcolour 
    blockdisplay[0].blockcolour = blockdisplay[1].blockcolour
    nextblockalong.blockcolour = blockdisplay[0].blockcolour
    selnext()
    step++
    }