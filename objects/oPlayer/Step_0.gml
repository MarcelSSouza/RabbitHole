// Step Event of your player object
var vel = 4;
var movimento = 0;

// Define the boundaries of the room
var leftBoundary = 0;
var rightBoundary = room_width;
var topBoundary = 0;
var bottomBoundary = room_height;

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


if (gamepad_is_connected(0)) {

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

	

}

sprite_index = sprites[movimento];
