/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor




/// @desc Navigate text and options

var _count = ChatterboxGetOptionCount(chatterbox); // Get the number of options we have

if ChatterboxIsWaiting(chatterbox) and keyboard_check_pressed(vk_space) //Is Chatterbox waiting for user input
{
	ChatterboxContinue(chatterbox);
	chatterbox_update();
}
else if _count //Is Chatterbox presenting the user with options
{
	var _key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	// Move option_index twice if next option is invalid
	
	repeat (1 + (ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1)) == false))
	{
		option_index = wrap(option_index + _key, 0, _count - 1);
	}
	
	if keyboard_check_pressed(vk_space)
	{
		ChatterboxSelect(chatterbox, option_index);
		option_index = 0;
		
		chatterbox_update();
	}
}

if ChatterboxIsStopped(chatterbox) // End when reached end of chatterbox
{
	instance_destroy();
	room_goto_next()
}







