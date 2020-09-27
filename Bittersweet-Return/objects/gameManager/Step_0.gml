/// @description Insert description here
// You can write your code in this editor


if (room_to_go != ""){
	if room == room_house{
		if room_to_go == room_bedroom{
			room = room_bedroom
			player_obj.x = 397
			player_obj.y = 303
		}
		
		if room_to_go == room_black_1{
			room = room_black_1				
		}
	}
	
	
	if room == room_bedroom{
		if room_to_go == room_house{
			room = room_house
			player_obj.x = 895
			player_obj.y = 72
			
		}
	}
	
	room_to_go = ""
	
}

if room == room_black_1{
	if timer > 0{
		timer -= 1	
		show_debug_message("Time is ticking!")
	} else {
		room = room_outside_1	
		timer = room_speed * 3
		show_debug_message("Time is up!")
	}
			
}

if room == room_outside_1{
	if audio_is_playing(creepy_bgm) == false{
		audio_play_sound(creepy_bgm, 10, true)	
	}
}