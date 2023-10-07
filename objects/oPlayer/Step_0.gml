// You can write your code in this editor

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

sprite_index = sprites[movimento];
