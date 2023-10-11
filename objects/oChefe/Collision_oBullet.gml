/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor










instance_destroy(other)
vida--;
global.enemytodestroy --;
if (vida == 0) {
    sprite_index = sDead;
    image_speed = 1;
	instance_destroy()// Set the image_speed to 1 to play the animation
}

// Check if the animation has finished




