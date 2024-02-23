package;

/**
 * ...
 * @author obi3112
 */
//THIS IS THE INTRO SCENE: THE FIRST SCENE THAT THE PLAYER WILL PLAY (TUTORIAL SCENE)

import haxegon.*;

class IntroScene 
{
	//instances
	var dialogueBox:DialogueBox = new DialogueBox();
	var i = 0;
	var diagTextArr:Array<String> = [
		"TEXT 1",
		"TEXT 2",
	];
	
	function update() 
	{
		dialogueBox.createDialogueBox(0, Gfx.screenheight - 50, Gfx.screenwidth, 50, Col.RED);
		if (Input.pressed(Key.Z)) 
		{
			i++;
			if (i >= diagTextArr.length) {
				i = diagTextArr.length - 1; // Reset index to loop back to the beginning
			}
		}
		dialogueBox.insertText(0,Gfx.screenheight-50,diagTextArr[i],2, Col.GREEN);
	}
	
}