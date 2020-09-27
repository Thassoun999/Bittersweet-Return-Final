/// @description Insert description here
// You can write your code in this editor


if (interactable){

	if conversationPhase == 0 && talking{ // start

		if myTextBox == noone{
			vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
			vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
			myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_obj)
			myTextBox.text = textNPC
			myTextBox.creator = self
			myTextBox.name = nameNPC
		}
			
	
	} else if conversationPhase == 1 && myTextBox == noone && talking{ // choices

		vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
		vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
		myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_obj)
		myTextBox.text = choices
		myTextBox.creator = self
		myTextBox.name = "You"
	
		
	} else if conversationPhase == 2 && myTextBox == noone && talking{

		if answer == 1 {
			vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
			vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
			myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_obj)
			myTextBox.text = alternateText1
			myTextBox.creator = self
			myTextBox.name = nameNPC
			ds_list_add(player_obj.answerList, -1)
			talking = false
		
		} else if answer == 2{
			vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
			vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
			myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_obj)
			myTextBox.text = alternateText2
			myTextBox.creator = self
			myTextBox.name = nameNPC
			ds_list_add(player_obj.answerList, 1)
			talking = false
		} else if answer == 3{
			vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
			vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
			myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_obj)
			myTextBox.text = alternateText3
			myTextBox.creator = self
			myTextBox.name = nameNPC
			ds_list_add(player_obj.answerList, 0)
			talking = false
		}
	
	
	
	} else if conversationPhase == 3 && talking{
			if myTextBox == noone{
				vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
				vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
				myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_obj)
				myTextBox.text = endingText
				myTextBox.creator = self
				myTextBox.name = nameNPC
				talking = false
			}
			
	}

}else if examinable {
	
	if myTextBox == noone && talking{
					
		vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 8
		vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(textbox_sprite_rectangle) - 2
					
		myTextBox = instance_create_layer(vx, vy, "TextBoxes", text_examine_obj)
		myTextBox.text = textNPC
		myTextBox.creator = self
		myTextBox.name = nameNPC
		talking = false
	}
			
}