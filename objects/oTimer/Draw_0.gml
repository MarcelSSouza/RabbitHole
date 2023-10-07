/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Draw the timer at the top of the screen
draw_self(); // Draw the timer sprite
draw_set_color(c_red)
draw_set_valign(fa_top); // Set vertical alignment to top
draw_set_halign(fa_center); // Set horizontal alignment to left
draw_set_font(fnt_font); // Set the font size (24 pixels in this example)
draw_text(x, y, string(countdown_time div room_speed));


