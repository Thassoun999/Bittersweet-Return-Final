/// @description Insert description here
// You can write your code in this editor


// draw textbox
draw_rectangle(x - 2, y - 2, x + boxWidth + 2, y + boxHeight + 2, false)

draw_sprite(textbox_sprite_rectangle, 0, x, y)

// draw text
draw_set_font(textFontNormal)
if charCount < string_length(text[page]){
	if audio_is_playing(textbloop_sfx) == false{
			audio_play_sound(textbloop_sfx, 1, false)		
	}
	charCount += 1	
} else {
	audio_stop_sound(textbloop_sfx)			
}

textPart = string_copy(text[page], 1, charCount)

// draw the name
draw_set_color(c_yellow)
draw_set_halign(fa_center)
draw_text(x + (boxWidth / 2), y + yBuffer, name)

// draw part of the text
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text_ext(x + xBuffer, y + stringHeight + yBuffer, textPart, stringHeight, boxWidth - (2 * xBuffer))