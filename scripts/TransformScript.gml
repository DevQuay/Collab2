AnimationSprite = argument0;//sprite with animation subimages
Result = argument1;//resulting object or sprite
ChangeInput = argument2;//need to define type to look for
TriggerButton = argument3;//Button to look for
ChangeType = argument4;//hacky variable. 0 is sprite to sprite, 1 is sprite to object
performEvents = argument5;//needed to fix shooting
ChangeThresh = (sprite_get_number(argument0)-1);//used to adapt the script to any length of animation

if ChangeInput = 0 {//mouse input
if mouse_check_button_pressed(TriggerButton){
changing = 1+ChangeType;
}
}
else if ChangeInput = 1{//keyboard input
if keyboard_check_pressed(TriggerButton){
changing = 1+ChangeType;
}
}


if changing = 1{//sprite to sprite
sprite_index=(AnimationSprite);
if (image_index = ChangeThresh){
    sprite_index=(Result);
    changing=0;
}
}
if changing = 2{//sprite to object
sprite_index=(AnimationSprite);
if (image_index = ChangeThresh){
    instance_change(Result, performEvents);
    changing=0;
}
}
