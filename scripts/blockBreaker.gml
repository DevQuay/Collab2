AnimationSprite = argument0;//sprite with animation subimages
Result = argument1;//resulting object
ChangeThresh = (sprite_get_number(argument0)-1);//used to adapt the script to any length of animation

if matched{
self.sprite_index=(AnimationSprite);
if (self.image_index = ChangeThresh){
    with (self) instance_change(Result, true);
}}

