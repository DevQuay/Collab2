//Globalize
globalvar colours;
globalvar colours1;
globalvar PreviewSetting;
globalvar KeyRepeat;
globalvar graceperiod;
globalvar interval;
globalvar AllowMouseControl;
globalvar paused;
globalvar LeavingPause;
globalvar BombScore;
globalvar displayedScore;
globalvar Fullscreenedthing;
globalvar MutedThing;
globalvar currentmusic;
//colourlist
//vital colours
colours[0] = spr_explodingbox
colours[1] = spr_redbox
colours[2] = spr_purplebox
colours[3] = spr_greenbox
colours[4] = spr_bluebox
colours[5] = spr_orangebox
//misc colours
//colours[6] = spr_yellowbox
//colours[7] = spr_greybox


//flippedcolourlist
colours1[0] = spr_explodingboxf
colours1[1] = spr_redboxf
colours1[2] = spr_purpleboxf
colours1[3] = spr_greenboxf
colours1[4] = spr_blueboxf
colours1[5] = spr_orangeboxf
//Settings
PreviewSetting = 4;
KeyRepeat = 1;
graceperiod = 15;
interval = 12;
AllowMouseControl = 1;
paused = 0;
LeavingPause = 0;
BombScore = 0;
Fullscreenedthing = 0;
MutedThing = 0;
currentmusic = -1;
//randomize
randomize()
