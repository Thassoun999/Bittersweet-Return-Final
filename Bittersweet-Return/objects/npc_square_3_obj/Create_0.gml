/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

nameNPC = "Familiar Face"

// Starting Text
textNPC[0] = "Having fun?"

// Choices
choices[0] = "1. Uhh... Sure\n2. ...\n3. I hate you."

// Uhh... Sure
alternateText1[0] = "Uh huh, there's nothing here but two people to talk to."
alternateText1[1] = "And they are BARELY people."
alternateText1[2] = "You have a weird idea of 'fun'."
if ds_list_find_value(player_obj.answerList, 0) == 0 && ds_list_find_value(player_obj.answerList, 1) == 0{
	alternateText1[3] = "Overall though, you had nothing to say to these two people."
	alternateText1[4] = "You just ended up wasting your time and theirs."
	alternateText1[5] = "All because you wanted to spout some nonsense or because you didn't care."
} else if ds_list_find_value(player_obj.answerList, 0) == 1 && ds_list_find_value(player_obj.answerList, 1) == 1 {	
	alternateText1[3] = "Overall though, I don't even know how you were able to stay so upbeat with these two."
	alternateText1[4] = "Where does that sense of pride even come from? It's shit like that that'll get you killed."
	alternateText1[5] = "Learn your place, you're not here for that."
} else if ds_list_find_value(player_obj.answerList, 0) == -1 && ds_list_find_value(player_obj.answerList, 1) == -1{
	alternateText1[3] = "Overall though, just..."
	alternateText1[4] = "Jesus!"
	alternateText1[5] = "Barely back in town for a minute and you're just absolutely depressing and abrupt."
	alternateText1[6] = "This is the best I've ever seen from you."
	alternateText1[7] = "Keep it up and you might just live long enough to rot in this cruel world."
	
} else{
	alternateText1[3] = "Overall though, you really interacted differently with both of these people."
	alternateText1[4] = "Who were you even truthful with? Or do you honestly believe in competing narratives?"
	alternateText1[5] = "Whatever, it's your life. Say whatever you want."
}

// ...
alternateText2[0] = "Cute, I'm down to this play this game."
alternateText2[1] = "Just know it never turns out well for you."
alternateText2[2] = "You're not in control of anything."
if ds_list_find_value(player_obj.answerList, 0) == 0 && ds_list_find_value(player_obj.answerList, 1) == 0{
	alternateText2[3] = "Overall though, you had nothing to say to these two people."
	alternateText2[4] = "You just ended up wasting your time and theirs."
	alternateText2[5] = "All because you wanted to spout some nonsense or because you didn't care."
} else if ds_list_find_value(player_obj.answerList, 0) == 1 && ds_list_find_value(player_obj.answerList, 1) == 1 {	
	alternateText2[3] = "Overall though, I don't even know how you were able to stay so upbeat with these two."
	alternateText2[4] = "Where does that sense of pride even come from? It's shit like that that'll get you killed."
	alternateText2[5] = "Learn your place, you're not here for that."
} else if ds_list_find_value(player_obj.answerList, 0) == -1 && ds_list_find_value(player_obj.answerList, 1) == -1{
	alternateText2[3] = "Overall though, just..."
	alternateText2[4] = "Jesus!"
	alternateText2[5] = "Barely back in town for a minute and you're just absolutely depressing and abrupt."
	alternateText2[6] = "This is the best I've ever seen from you."
	alternateText2[7] = "Keep it up and you might just live long enough to rot in this cruel world."
	
} else{
	alternateText2[3] = "Overall though, you really interacted differently with both of these people."
	alternateText2[4] = "Who were you even truthful with? Or do you honestly believe in competing narratives?"
	alternateText2[5] = "Whatever, it's your life. Say whatever you want."
}

// I hate you
alternateText3[0] = "At least I give a damn to go pick you up."
alternateText3[1] = "You think I asked for this? Piss off!"
alternateText3[2] = "You don't deserve my time, my help, or my goddamn attention."
if ds_list_find_value(player_obj.answerList, 0) == 0 && ds_list_find_value(player_obj.answerList, 1) == 0{
	alternateText3[3] = "Overall though, you had nothing to say to these two people."
	alternateText3[4] = "You just ended up wasting your time and theirs."
	alternateText3[5] = "All because you wanted to spout some nonsense or because you didn't care."
} else if ds_list_find_value(player_obj.answerList, 0) == 1 && ds_list_find_value(player_obj.answerList, 1) == 1 {	
	alternateText3[3] = "Overall though, I don't even know how you were able to stay so upbeat with these two."
	alternateText3[4] = "Where does that sense of pride even come from? It's shit like that that'll get you killed."
	alternateText3[5] = "Learn your place, you're not here for that."
} else if ds_list_find_value(player_obj.answerList, 0) == -1 && ds_list_find_value(player_obj.answerList, 1) == -1{
	alternateText3[3] = "Overall though, just..."
	alternateText3[4] = "Jesus!"
	alternateText3[5] = "Barely back in town for a minute and you're just absolutely depressing and abrupt."
	alternateText3[6] = "This is the best I've ever seen from you."
	alternateText3[7] = "Keep it up and you might just live long enough to rot in this cruel world."
	
} else{
	alternateText3[3] = "Overall though, you really interacted differently with both of these people."
	alternateText3[4] = "Who were you even truthful with? Or do you honestly believe in competing narratives?"
	alternateText3[5] = "Whatever, it's your life. Say whatever you want."
}
 
// Ending Text
endingText[0] = "Come on, let's just go. I'm not waiting here all day."
