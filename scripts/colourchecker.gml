#define colourchecker
///Block Colour Check

leftcheck = instance_place(self.x-2,self.y,obj_blockparent)
rightcheck = instance_place(self.x+2,self.y,obj_blockparent)
upcheck = instance_place(self.x,self.y-2,obj_blockparent)

check()

#define check
if leftcheck != noone{
if leftcheck.blockcolour = self.blockcolour{
self.matched = 1
leftcheck.matched = 1
score += 10;
}
}

if rightcheck != noone{
if rightcheck.blockcolour = self.blockcolour{
self.matched = 1
rightcheck.matched = 1
score += 10;
}
}

if upcheck != noone{
if upcheck.blockcolour = self.blockcolour{
self.matched = 1
upcheck.matched = 1
score += 10;
}
}