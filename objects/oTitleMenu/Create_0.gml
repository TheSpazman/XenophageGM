width = 256; //Menu Object Width
height = 256; // Menu Object Height

op_border = 32; // How much of a border between each option and box edge
op_space = 32; // How much of a space between each option selection

pos = 0; // Position of highlighted object on menu / Selected Menu Option

// Options Enumerator

option[0] =  "Start"; 
option[1] =  "Option";
option[2] =  "Quit to OS";

//option[1, 0] = "Not Yet Implemented"; 
//option[1, 1] = "Return"; 

op_length = array_length(option);
menuBranch = 0;   // 0 is main-menu tree, 1+ is a branch of this tree. 

// Controller Input 

controller = 0; 
key_pressed = 0;
deadZone = gamepad_set_axis_deadzone(0, 0.25);





