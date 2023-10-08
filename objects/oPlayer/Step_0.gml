// Step Event of your player object
vel = 3;
movimento = 0;


// Define the boundaries of the room
leftBoundary = 0;
rightBoundary = room_width;
topBoundary = 0;
bottomBoundary = room_height;

if (keyboard_check(vk_right) && x + vel < rightBoundary) {
    x += vel;
    movimento = 2;
}

if (keyboard_check(vk_left) && x - vel > leftBoundary) {
    x -= vel;
    movimento = 1;
}

if (keyboard_check(vk_up) && y - vel > topBoundary) {
    y -= vel;
    movimento = 3;
}

if (keyboard_check(vk_down) && y + vel < bottomBoundary) {
    y += vel;
    movimento = 4;
}

if (!keyboard_check(vk_anykey)) {
    movimento = 0;
}




if (gamepad_button_check(0,gp_padr) && x + vel < rightBoundary) {
    x += vel;
    movimento = 2;
}

if (gamepad_button_check(0,gp_padl) && x - vel > leftBoundary) {
    x -= vel;
    movimento = 1;
}

if (gamepad_button_check(0,gp_padu) && y - vel > topBoundary) {
    y -= vel;
    movimento = 3;
}

if (gamepad_button_check(0,gp_padd) && y + vel < bottomBoundary) {
    y += vel;
    movimento = 4;
	
}

sprite_index = sprites[movimento];



if(instance_number(oCoin) == 0){

audio_stop_sound(MainSong)
room_goto_next()



}

if(keyboard_check(vk_escape)){
room_goto(Main)
}
if(keyboard_check(vk_enter)){
room_goto_next()
}

sprite_index = sprites[movimento];
