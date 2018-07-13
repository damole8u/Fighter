// Key input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

// Calculate Movement
var move = key_right - key_left;

//Player Facing
if (move != 0) image_xscale = sign(move);