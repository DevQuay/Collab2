#define colourchecker
///Block Colour Check

leftcheck = instance_place(self.x-2,self.y,obj_blockparent)
rightcheck = instance_place(self.x+2,self.y,obj_blockparent)
upcheck = instance_place(self.x,self.y-2,obj_blockparent)
downcheck = instance_place(self.x,self.y+2,obj_blockparent)

check(leftcheck)
check(rightcheck)
check(downcheck)
check(upcheck)

#define check
if argument0 != noone{
    if argument0.blockcolour = self.blockcolour{
        self.matched = 1 
        argument0.matched = 1 //block collided WITH 
            if !scoreadded{
                audio_play_sound(match,20,false)
                score += 10;
                scoreadded = true
        }
    }
}
