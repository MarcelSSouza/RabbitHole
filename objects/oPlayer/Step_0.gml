// Step Event of your player object
vel = 3;
movimento = 0;

if (global.enemytodestroy == 0 and instance_number(oCoin)==0 and instance_number(oChefe)==0){room_goto_next()
	audio_stop_all()
	}
direction= point_direction(x,y,oPlayer.x,oPlayer.y)
// Define the boundaries of the room

if (keyboard_check(vk_right)) {
    x += vel;
    movimento = 2;
}

if (keyboard_check(vk_left) ) {
    x -= vel;
    movimento = 1;
}

if (keyboard_check(vk_up)) {
    y -= vel;
    movimento = 3;
}

if (keyboard_check(vk_down)) {
    y += vel;
    movimento = 4;
}

if (!keyboard_check(vk_anykey)) {
    movimento = 0;
}




if (gamepad_button_check(0,gp_padr)) {
    x += vel;
    movimento = 2;
}

if (gamepad_button_check(0,gp_padl) ) {
    x -= vel;
    movimento = 1;
}

if (gamepad_button_check(0,gp_padu) ) {
    y -= vel;
    movimento = 3;
}

if (gamepad_button_check(0,gp_padd) ) {
    y += vel;
    movimento = 4;
	
}

sprite_index = sprites[movimento];


//ATENCAO AQUI
if(!instance_exists(oGun) and  instance_number(oCoin) == 0){

audio_stop_sound(MainSong)
room_goto_next()




}

if(keyboard_check(vk_escape)){
room_goto(Main)
}


sprite_index = sprites[movimento];



if (mouse_check_button_released(mb_left) and instance_exists(oGun)){
with(instance_create_layer(x,y,"Instances", oBullet)){
direction= oGun.image_angle
speed=8
}}