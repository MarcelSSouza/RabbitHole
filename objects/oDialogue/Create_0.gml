/// @desc Initialize chatterbox and set variables

ChatterboxLoadFromFile("test.yarn");               // Load file
ChatterboxAddFunction("bg", background_set_index); // Add function to change background index
chatterbox = ChatterboxCreate();                   // Create a chatterbox
ChatterboxJump(chatterbox, "Start");               // Go to "Start" node
chatterbox_update();                               // Get current node and current node text

option_index = 0;                                  // Initialize option index

size = [0.7, 0.75];                                // Character sprite scale (small and large)
colour = [c_ltgray, c_white];