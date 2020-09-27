/// @description Insert description here
// You can write your code in this editor

// Bound check
if x > room_width{
    x = room_width - 1
}
if x < 0{
    x = 0 + 1
}
if y > room_height{
	y = room_height	- 1
} 
if y < 0 {
	y = 0 + 1	
}


/// Movement
if (dialogueCheck == false) {
	if keyboard_check(ord("W")){ // Going Up
	
		image_speed = 0.5
		sprite_index = player_sprite_up
		vertCheck = true
		ymspd = -Maxmpsd
	
	
	} else if keyboard_check(ord("S")){ // Going Down
	
		image_speed = 0.5
		sprite_index = player_sprite_down
		vertCheck = true
		ymspd = +Maxmpsd
	} 

	if keyboard_check(ord("D")){ // Going Right
	
		image_speed = 0.5
		sprite_index = player_sprite_right
		horiCheck = true
		xmspd = +Maxmpsd
	} else if keyboard_check(ord("A")) { // Going Left	
	
		image_speed = 0.5
		sprite_index = player_sprite_left
		horiCheck = true
		xmspd = -Maxmpsd	
	}

	if keyboard_check(ord("D")) && keyboard_check(ord("W")){ // Up right

		horiCheck = true
		vertCheck = true
		image_speed = 0.5
		sprite_index = player_sprite_right
	
	
	}

	if keyboard_check(ord("D")) && keyboard_check(ord("S")){ // Down Right

		horiCheck = true
		vertCheck = true
		image_speed = 0.5
		sprite_index = player_sprite_right
	
	
	
	}

	if keyboard_check(ord("A")) && keyboard_check(ord("W")){ // Up left

		horiCheck = true
		vertCheck = true
		image_speed = 0.5
		sprite_index = player_sprite_left
	
	}

	if keyboard_check(ord("A")) && keyboard_check(ord("S")){ // Down left

		horiCheck = true
		vertCheck = true
		image_speed = 0.5
		sprite_index = player_sprite_left
	
	
	}

	if xmspd != 0 && ymspd != 0{ // Going diagonal, adjust movspeed
		if xmspd > 0{
			xmspd = sqrt((Maxmpsd * Maxmpsd) / 2)
		} else if xmspd < 0{
			xmspd = -sqrt((Maxmpsd * Maxmpsd) / 2)
		}
	
		if ymspd > 0{
			ymspd = sqrt((Maxmpsd * Maxmpsd) / 2)
		} else if ymspd < 0{
			ymspd = -sqrt((Maxmpsd * Maxmpsd) / 2)
		}
	}

	// If no buttons are being pressed, idle on current frame
	if !keyboard_check(ord("W")) && !keyboard_check(ord("S")) && !keyboard_check(ord("A")) && !keyboard_check(ord("D")){
		xmspd = 0
		ymspd = 0
		image_index = 0
		image_speed = 0
	}

	// No strafing / sliding!
	if vertCheck == false {
		ymspd = 0	
	}
	if horiCheck == false {
		xmspd = 0	
	}

	// Moving + Collision
	if collision_point(x + xmspd + 10 * sign(xmspd), y, wall_parent_obj, true, true){
		xmspd = 0
	} else if collision_point(x + xmspd + 10 * sign(xmspd), y, npc_parent_obj, true, true) { // Horizontal Collision Check
		xmspd = 0
	}
	
	x += xmspd

	if collision_point(x, y  + ymspd + 10 * sign(ymspd), wall_parent_obj, true, true){
		ymspd = 0	
	} else if collision_point(x, y + ymspd +  10 * sign(ymspd), npc_parent_obj, true, true){ // Vertical Collision Check
		ymspd = 0
	
	}
	y += ymspd

	vertCheck = false
	horiCheck = false
	
	// Selection
	if keyboard_check_pressed(vk_lshift){
		inst1 = instance_nearest(x, y, npc_parent_obj)
		inst2 = instance_nearest(x, y, wall_parent_obj)
		if (inst2.examinable == true || inst2.interactable == true){
			if distance_to_object(inst1) > distance_to_object(inst2){
				if distance_to_object(inst2) <= 5{
					inst2.talking = true
				}
			} else {
				if distance_to_object(inst1) <= 5{
					inst1.talking = true
				}
			}		
		
		} else {
			if distance_to_object(inst1) <= 5{
					inst1.talking = true
			}	
			
		}
		
	}

} else {
	xmspd = 0
	ymspd = 0
	image_index = 0
	image_speed = 0
}

/*
if ds_list_size(player_obj.answerList) == 2 && endEntity == false{
		show_debug_message("Here")
		endEntity = true
		instance_create_layer(494, 553, "Instances", npc_square_3_obj)
		
}
*/

