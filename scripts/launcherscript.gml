#define launcherscript
movedist = 16
mapoutlineoffset = 16
leftborder = 96 //change leftborder to match in game placements
rightborder = 384//change right border variable to match right wall of play area
repeatdelay = 0.15
if paused = 0{

if object_index = obj_holdobject{
if AllowMouseControl{
HoldBit(mb_right,1)
}
if !AllowMouseControl{
HoldBit(vk_down,0)
HoldBit(ord("S"),0)
}
}
if object_index != obj_holdobject{
if !AllowMouseControl{
LRMove(vk_left,vk_right)
LRMove(ord("A"),ord("D"))

LauncherBit(vk_up,0)
LauncherBit(ord("W"),0)
}
if AllowMouseControl{
if LeavingPause = 0{
LauncherBit(mb_left,1)
}
MouseMove()
}
}
}

#define LRMove
///LRMove(keyLeft, keyRight)
if KeyRepeat = 0{
keyleft = keyboard_check_pressed(argument0)
keyright = keyboard_check_pressed(argument1)
if x > leftborder{
if keyleft {
    self.x -= movedist;
    audio_play_sound(move,20,false)
}
}
if x < rightborder - movedist{
if keyright {
    self.x += movedist;
    audio_play_sound(move,20,false)
}
}
}
if KeyRepeat = 1{
keyleft = keyboard_check(argument0)
keyright = keyboard_check(argument1)
if x > leftborder{
if canMove{
if keyleft {
    audio_play_sound(move,20,false)
    self.x -= movedist;
    canMove = 0
    alarm[0] = room_speed*repeatdelay
}
}
}
if x < rightborder - movedist{
if canMove{
if keyright {
    audio_play_sound(move,20,false)
    self.x += movedist;
    canMove = 0
    alarm[0] = room_speed*repeatdelay
}
}
}
}


#define LauncherBit
///LauncherBit(keyLaunch)
if argument1 = 0{
keylaunch = keyboard_check_pressed(argument0)
}
if argument1 = 1{
keylaunch = mouse_check_button_pressed(argument0)
}
if !launchede{
if keylaunch{
    audio_play_sound(blockshoot,15,false)
    launchede = 1
    obj_holdobject.canHold = 0
    obj_nextblock.launcherx = self.x
    obj_nextblock.launchery = self.y
    launchedobj = instance_create(self.x,self.y, obj_launchedblock)
    launchedobj.blockcolour = self.blockcolour;
    launchedobj.ignorecollision = 1
    launchedobj.alarm[1] = room_speed*3
    launchedobj.vspeed = -4;
    self.sprite_index = spr_blankedLauncher
}
}


#define HoldBit
///HoldBit(HoldKey)
if argument1 = 0{
keyhold = keyboard_check_pressed(argument0)
}
if argument1 = 1{
keyhold = mouse_check_button_pressed(argument0)
}

if keyhold{
    if !swappedalready{//called on the first hold action ONLY
        self.heldcolour = obj_basicblock.blockcolour
        nextblocker(false)
        swappedalready = 1
        swapped = 1
        }
    if swapped{//called every time after
        if canHold{
            self.holdingcolour = self.heldcolour
            self.heldcolour = obj_basicblock.blockcolour
            obj_basicblock.blockcolour = self.holdingcolour
            canHold = 0
        }
    }
}

#define MouseMove

if point_distance(self.x,self.y,mouse_x,self.y) >= 4{
if x < rightborder - movedist{
if self.x<mouse_x{
self.x+=16;

}
}
if x > leftborder{
if self.x>mouse_x{
self.x-=16;

}
}
}