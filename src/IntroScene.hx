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
	
	
	function update() 
	{
		dialogueBox.createDialogueBox(0, Gfx.screenheight - 50, Gfx.screenwidth, 50, Col.RED);
		dialogueBox.insertText(0,Gfx.screenheight-50,"THIS IS A DIALOGUE TEST",1, Col.WHITE);
	}
}