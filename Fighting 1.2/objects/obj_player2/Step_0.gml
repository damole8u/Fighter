

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
	sprite_index = ATK;
	cooldown = 25;
}
else if (cooldown < 15)
{
	sprite_index = TestChar;
}
cooldown = cooldown - 1;

if (place_meeting(x, y, obj_player) && (keyboard_check(vk_enter)))
{
		obj_player.hp -= 10;
		
   }

if obj_player2.hp <= 0 {
	show_message("Player 1 WINS!!!");
	game_end();
}
//Player Health
//if(player_1){
//	hp-= 10;
//}