keyleft = keyboard_check_pressed(vk_left)
keyright = keyboard_check_pressed(vk_right)
keylaunch = keyboard_check_pressed(vk_up)
movedist = 16
mapoutlineoffset = 16

leftborder = 96 //change leftborder to match in game placements
rightborder = 384//change right border variable to match right wall of play area
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
if !launched{
if keylaunch{
    launched = 1
    obj_nextblock.launcherx = self.x
    obj_nextblock.launchery = self.y
    launchedobj = instance_create(self.x,self.y, obj_launchedblock)
    launchedobj.blockcolour = self.blockcolour;
    launchedobj.vspeed = -4;
    self.sprite_index = spr_blankedLauncher
}
}


