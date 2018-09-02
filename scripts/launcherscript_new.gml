#define launcherscript_new
movedist = 16
mapoutlineoffset = 16
leftborder = 96 //change leftborder to match in game placements
rightborder = 384//change right border variable to match right wall of play area
repeatdelay = 0.15
LRMove(vk_left,vk_right)
LRMove(ord("A"),ord("D"))

LauncherBit(vk_up)
LauncherBit(ord("W"))

/*
HoldBit(vk_down)
HoldBit(ord("S"))
*/


#define LRMove
///LRMove(keyLeft, keyRight)
if KeyRepeat = 0{
keyleft = keyboard_check_pressed(argument0)
keyright = keyboard_check_pressed(argument1)
if x > leftborder{
if keyleft {
    self.x -= movedist;
}
}
if x < rightborder - movedist{
if keyright {
    self.x += movedist;
}
}
}
if KeyRepeat = 1{
keyleft = keyboard_check(argument0)
keyright = keyboard_check(argument1)
if x > leftborder{
if canMove{
if keyleft {
    self.x -= movedist;
    canMove = 0
    alarm[0] = room_speed*repeatdelay
}
}
}
if x < rightborder - movedist{
if canMove{
if keyright {
    self.x += movedist;
    canMove = 0
    alarm[0] = room_speed*repeatdelay
}
}
}
}


#define LauncherBit
///LauncherBit(keyLaunch)
keylaunch = keyboard_check_pressed(argument0)
if !launchede{
if keylaunch{
    audio_play_sound(blockshoot,15,false)
    launchede = 1
    obj_nextblock.launcherx = self.x
    obj_nextblock.launchery = self.y
    launchedobj = instance_create(self.x,self.y, obj_launchedblock)
    launchedobj.blockcolour = self.blockcolour;
    launchedobj.vspeed = -4;
    self.sprite_index = spr_blankedLauncher
}
}


#define HoldBit
///HoldBit(HoldKey)
