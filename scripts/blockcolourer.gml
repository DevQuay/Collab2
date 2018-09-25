#define blockcolourer
if argument0{
    if !launchede{
        ColourSub1()
    }
}
else{
    ColourSub()
}

#define ColourSub
{
var i;
for (i = 0; i <= (array_length_1d(colours)-1); i += 1){
if self.blockcolour = i{
self.sprite_index = colours[i]
}
}
}
#define ColourSub1
{
var i;
for (i = 0; i <= (array_length_1d(colours1)-1); i += 1){
if self.blockcolour = i{
self.sprite_index = colours1[i]
}
}
}