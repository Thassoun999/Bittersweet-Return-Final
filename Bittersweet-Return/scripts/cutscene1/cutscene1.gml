// Scripted sequence let's start!!!!!
conversationPhaseCutscene = argument0
idDoor = argument1


// Lock things in place, capture data
player_obj.dialogueCheck = true
camera_obj.cutscene = true

cam = view_camera[0]
view_w_half = camera_get_view_width(cam) * 0.5
view_h_half = camera_get_view_height(cam) * 0.5
fin = false

// Conversation
if conversationPhaseCutscene == 0{
	camera_set_view_pos(cam, mom_obj.x - view_w_half, mom_obj.y - view_h_half)
	vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
	vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
	myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_cutscene_obj)
	myTextBox.text = ["And where do you think you're going young lady?"]
	myTextBox.creator = idDoor
	myTextBox.name = "Mom"	
	
} else if conversationPhaseCutscene == 1{
	camera_set_view_pos(cam, player_obj.x - view_w_half + 240, player_obj.y - view_h_half - 50)
	vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
	vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
	myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_cutscene_obj)
	myTextBox.text = ["Out.", "...", "I really need some fresh air, I feel a little stuffy."]
	myTextBox.creator = idDoor
	myTextBox.name = "Aila"	
	
} else if conversationPhaseCutscene == 2{
	camera_set_view_pos(cam, mom_obj.x - view_w_half, mom_obj.y - view_h_half)
	vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
	vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
	myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_cutscene_obj)
	myTextBox.text = ["And what's that supposed to mean!?", "You sleep until the evening, you constantly give me lip, and you won't even stay for dinner!", "What has gotten into you? You JUST got back home, at least eat with us!", "Do you even give a damn about us!?", "I swear sometimes you're just absolutely ungrateful."]
	myTextBox.creator = idDoor
	myTextBox.name = "Mom"
	
	
} else if conversationPhaseCutscene == 3{
	camera_set_view_pos(cam, player_obj.x - view_w_half + 240, player_obj.y - view_h_half - 50)
	vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
	vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
	myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_cutscene_obj)
	myTextBox.text = ["LOOK I DON'T KNOW WHAT YOU WANT FROM ME!", "I'M SUFFOCATING IN HERE!", "I constantly have to keep up appearances and tone down myself for your sake! I don't know WHAT you want from me!", "Because right now I'm absolutely MISERABLE and I just want to leave!"]
	myTextBox.creator = idDoor
	myTextBox.name = "Aila"	
	
	
} else if conversationPhaseCutscene == 4{
	camera_set_view_pos(cam, dad_obj.x - view_w_half, dad_obj.y - view_h_half)
	vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
	vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
	myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_cutscene_obj)
	myTextBox.text = ["Hey Aila, I... We can take a moment to talk about this.", "Whatever it is that's bothering you.", "I... uh..."]
	myTextBox.creator = idDoor
	myTextBox.name = "Dad"	
	
	
} else if conversationPhaseCutscene == 5{
	camera_set_view_pos(cam, mom_obj.x - view_w_half, mom_obj.y - view_h_half)
	vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
	vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
	myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_cutscene_obj)
	myTextBox.text = ["Leave it, just... leave it.", "...", "*sigh*", "Go cool off.", "Don't come back in here until you've calmed down.", "Don't bother staying for dinner."]
	myTextBox.creator = idDoor
	myTextBox.name = "Mom"

	
	
} else if conversationPhaseCutscene == 6{
	camera_set_view_pos(cam, player_obj.x - view_w_half + 240, player_obj.y - view_h_half - 50)
	vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
	vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
	myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_cutscene_obj)
	myTextBox.text = ["...", "Later..."]
	myTextBox.creator = idDoor
	myTextBox.name = "Aila"

	
} else if conversationPhaseCutscene > 6{
	fin = true	
	
}



if fin == true{
	audio_play_sound(doorclose_sfx, 1, false)

	// Unlock things
	player_obj.dialogueCheck = false
	camera_obj.cutscene = false
}


return fin