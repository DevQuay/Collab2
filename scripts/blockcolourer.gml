colour0 = spr_redbox
colour1 = spr_bluebox
colour2 = spr_greenbox
colour3 = spr_purplebox
rootobject = argument0 

if rootobject.blockcolour = 0{
self.sprite_index = colour0
}
if rootobject.blockcolour = 1{
self.sprite_index = colour1
}
if rootobject.blockcolour = 2{
self.sprite_index = colour2
}
if rootobject.blockcolour = 3{
self.sprite_index = colour3
}
