#define MusicBoy
MusicList[0] = sound2;
MusicList[1] = levelmusic2;
MusicList[2] = level4;
MusicList[3] = song5;

if !audio_is_playing(currentmusic){
    nxtsng()
    audio_play_sound(nxtmsc,40,false)
    currentmusic=nxtmsc    
}

#define nxtsng
nxtmsc = MusicList[irandom_range(1,(array_length_1d(MusicList)-1))];