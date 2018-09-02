movedist = 16
mapoutlineoffset = 16
leftborder = 96 //change leftborder to match in game placements
rightborder = 384//change right border variable to match right wall of play area
repeatdelay = 0.15

if KeyRepeat = 0{
keyleft = keyboard_check_pressed(vk_left)
keyright = keyboard_check_pressed(vk_right)
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
keyleft = keyboard_check(vk_left)
keyright = keyboard_check(vk_right)
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
keylaunch = keyboard_check_pressed(vk_up)
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
