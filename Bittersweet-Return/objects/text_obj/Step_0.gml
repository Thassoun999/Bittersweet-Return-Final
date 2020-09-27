/// @description Insert description here
// You can write your code in this editor

if creator.conversationPhase != 1 {
	if(keyboard_check_pressed(vk_space)){
		if(charCount < string_length(text[page])){
			charCount = string_length(text[page])	
		} else if (page + 1 < array_length_1d(text)){
			page += 1
			charCount = 0
		} else {
			creator.conversationPhase += 1
			if creator.conversationPhase >= 3 {
				creator.conversationPhase = 3
				player_obj.dialogueCheck = false // the end
			}
			
			instance_destroy()	
			creator.alarm[1] = 1
		}
	}	
} else {
	if(keyboard_check_pressed(vk_space)){
		if(charCount < string_length(text[page])){
			charCount = string_length(text[page])	
		}
	}	
	
	if (keyboard_check_pressed(ord("1"))){
		creator.answer = 1	
		creator.conversationPhase += 1
		
		instance_destroy()	
		creator.alarm[1] = 1
	} else if (keyboard_check_pressed(ord("2"))){
		creator.answer = 2
		creator.conversationPhase += 1
		
		instance_destroy()	
		creator.alarm[1] = 1
	} else if (keyboard_check_pressed(ord("3"))){
		creator.answer = 3
		creator.conversationPhase += 1
		
		instance_destroy()	
		creator.alarm[1] = 1
	}
	
}

