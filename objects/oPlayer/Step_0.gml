// Step Event of your player object
vel = 3;
movimento = 0;

// Check if certain instances don't exist
if (instance_number(oEnemyGun) == 0 && instance_number(oCoin) == 0 && instance_number(oChefe) == 0) {
    audio_stop_all();
    instance_create_depth(0, 0, -9999, oFade);
    room_goto_next();
}

// Determine movement based on input
var move_x = 0;
var move_y = 0;

if (keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr)) {
    move_x = vel;
    movimento = 2;
} else if (keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl)) {
    move_x = -vel;
    movimento = 1;
}

if (keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu)) {
    move_y = -vel;
    movimento = 3;
} else if (keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd)) {
    move_y = vel;
    movimento = 4;
}

// Apply movement
x += move_x;
y += move_y;

if (move_x == 0 && move_y == 0) {
    movimento = 0;
}

sprite_index = sprites[movimento];

// Check if oGun doesn't exist and there are no oCoins
if (!instance_exists(oGun) && instance_number(oCoin) == 0) {
    audio_stop_sound(MainSong);
    instance_create_depth(0, 0, -9999, oFade);
    room_goto_next();
}

// Handle mouse click to shoot
if (mouse_check_button_released(mb_left) && instance_exists(oGun)) {
    with (instance_create_layer(x, y, "Instances", oBullet)) {
        direction = oGun.image_angle;
        speed = 8;
    }
}

// Handle escape key
if (keyboard_check_pressed(vk_escape)) {
    room_goto(Main);
}
