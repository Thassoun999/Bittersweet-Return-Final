/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y, player_obj)){
			if keyboard_check_pressed(vk_lshift){
				click = true
			}		
}


if click == true{
	if myTextBox == noone{
		if fin == false{
			fin = cutscene1(conversationPhaseCutscene, self)
			
		} else{ 
			gameManager.room_to_go = room_black_1
		}

	}
}
