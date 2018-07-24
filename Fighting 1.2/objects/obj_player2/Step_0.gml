

// Key input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_up);


// Calculate Movement
var move = key_right - key_left;
vsp = vsp + grv;
if (place_meeting(x,y+1,obj_floor) && (key_jump))
{
	vsp = -27;
	if (!place_meeting (x,y+1,obj_floor))
{
	
	sprite_index = spr_player2_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
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


//Player Collsion Horizontal
if (place_meeting(x+hsp,y,obj_player))
{

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

//Player Collsion Vertical
if (place_meeting(x,y+vsp,obj_player))
{

	vsp = 0;
}


y = y + vsp;

//Player Facing
//if (hsp != 0) image_xscale = sign(hsp);
if (x < obj_player.x)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}


// Attacking
if (keyboard_check(vk_enter)) && (cooldown < 1)
{
	//instance_create_layer(x,y,layer,obj_attack);
	sprite_index = spr_player2_attack;
	if (place_meeting(x, y, obj_player)) 
	{
		//obj_player2.hp -= 10;
		obj_testdamage2.damage +=1;
	}
	

	cooldown = 25;
}
else if (cooldown < 15)
{
	sprite_index = spr_player2_resting;
}
cooldown = cooldown - 1;

//winning
	if obj_testdamage2.damage >= 8 
	{
		show_message("Player 2 WINS!!!");
		game_end();
	}
//Player Health
//if(player_1){
//	hp-= 10;
//}

//Animation
if (!place_meeting (x,y+1,obj_floor))
{
	
	sprite_index = spr_player2_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

else
{
	if (hsp == 0)
	{
		sprite_index = spr_player2_resting;
	}
	else
	{
		sprite_index = spr_player2_moving
	}
}
	
