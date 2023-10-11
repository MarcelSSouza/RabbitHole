// Step Event of your player object
vel = 3;
movimento = 0;

if (instance_number(oEnemyGun) == 0 and instance_number(oCoin) == 0 and instance_number(oChefe) == 0) {
    audio_stop_all();
    instance_create_depth(0, 0, -9999, oFade);
    room_goto_next();
}

direction = point_direction(x, y, oPlayer.x, oPlayer.y);

// Define the boundaries of the room

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) { // Check for "D" key for right movement
    x += vel;
    movimento = 2;
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) { // Check for "A" key for left movement
    x -= vel;
    movimento = 1;
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) { // Check for "W" key for up movement
    y -= vel;
    movimento = 3;
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) { // Check for "S" key for down movement
    y += vel;
    movimento = 4;
}

if (!keyboard_check(vk_anykey)) {
    movimento = 0;
}

if (gamepad_button_check(0, gp_padr) || gamepad_button_check(0, gp_padl) || gamepad_button_check(0, gp_padu) || gamepad_button_check(0, gp_padd)) {
    if (gamepad_button_check(0, gp_padr)) {
        x += vel;
        movimento = 2;
    }

    if (gamepad_button_check(0, gp_padl)) {
        x -= vel;
        movimento = 1;
    }

    if (gamepad_button_check(0, gp_padu)) {
        y -= vel;
        movimento = 3;
    }

    if (gamepad_button_check(0, gp_padd)) {
        y += vel;
        movimento = 4;
    }
}

sprite_index = sprites[movimento];

// ATENCAO AQUI
if (!instance_exists(oGun) and instance_number(oCoin) == 0) {
    audio_stop_sound(MainSong);
    instance_create_depth(0, 0, -9999, oFade);
    room_goto_next();
}

if (keyboard_check(vk_escape)) {
    room_goto(Main);
}

if (mouse_check_button_released(mb_left) && instance_exists(oGun)) {
    with (instance_create_layer(x, y, "Instances", oBullet)) {
        direction = oGun.image_angle;
        speed = 8;
    }
}
