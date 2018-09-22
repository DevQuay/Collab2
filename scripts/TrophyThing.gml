///Trophy Checks
if score == 20{
    if !gj_trophy_get_id("98647"){
    gj_trophy_add("98647");
    }
}
else if score > 1000{
    if !gj_trophy_get_id("98648"){
    gj_trophy_add("98648");
    }
}
else if score > 2000{
    if !gj_trophy_get_id("98651"){
    gj_trophy_add("98651");
    }
}
else if BombScore > 3000{
if !gj_trophy_get_id("98680"){
    gj_trophy_add("98680");
}
}
else if AllowMouseControl = 0{
if !gj_trophy_get_id("98650"){
    gj_trophy_add("98650");
    }
} 
