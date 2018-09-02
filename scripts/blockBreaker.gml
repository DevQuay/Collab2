AnimationSprite = argument0;//sprite with animation subimages
Result = argument1;//resulting object
ChangeThresh = (sprite_get_number(argument0)-1);//used to adapt the script to any length of animation
nextcheck = self.nextcheck
if matched{
if nextcheck==0{
colourchecker()
nextcheck = 1
}
self.sprite_index=(AnimationSprite);
if (self.image_index = ChangeThresh){
    with (self) instance_change(Result, true);
}
}
