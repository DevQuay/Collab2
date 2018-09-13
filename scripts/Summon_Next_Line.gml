leftborder = 96 //change leftborder to match in game placements
rightborder = 384//change right border variable to match right wall of play area
if obj_basicblock.launchede{

}
else{
with (obj_blockparent)event_user(0)
{
var i;
for (i = leftborder; i <= (rightborder-16); i += 16){
placedobj = instance_create(i,48, obj_placedBlock)

}
}
}
