#define colourchecker
///Block Colour Check
leftcheck = instance_place(self.x-2,self.y,obj_launchedblock)
rightcheck = instance_place(self.x+2,self.y,obj_launchedblock)
upcheck = instance_place(self.x,self.y-2,obj_launchedblock)

if leftcheck != noone{
checkrepeat()
}

else if rightcheck != noone{
checkrepeat()
}

else if upcheck != noone{
checkrepeat()
}

#define checkrepeat
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