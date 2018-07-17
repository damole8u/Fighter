// Key input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_up) || keyboard_check(ord("W"));

// Calculate Movement
var move = key_right - key_left;
vsp = vsp + grv;
if (place_meeting(x,y+1,obj_floor) && (key_jump))
{
	vsp = -9;
}


// Horizontal Movement
hsp = move * walksp;

// Horizontal Collision
if (place_meeting(x+hsp,y,obj_floor))
{
	while (!place_meeting(x+sign(hsp),y,obj_floor))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_floor))
{
	while (!place_meeting(x,y+sign(vsp),obj_floor))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;

//Player Facing
if (hsp != 0) image_xscale = sign(hsp);

// Attacking
if (keyboard_check(vk_enter)) && (cooldown < 1)
{
	instance_create_layer(x,y,layer,obj_attack);
	cooldown = 30;
}
cooldown = cooldown - 1;

//Player Health
if(player_1){
	hp-= 10;
}