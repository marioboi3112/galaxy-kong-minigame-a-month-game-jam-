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
	//variables
	var x:Int;
	var y:Int;
	var w:Int;
	var h:Int;
	var col:Dynamic;
	var diagTextArr:Array<String> = [
		"TEXT 1",
		"TEXT 2",
	];
	var scale:Int = 2;
	//functions
	function init()
	{
		x = 0;
		y = Gfx.screenheight - 50;
		w = Gfx.screenwidth;
		h = 50;
		col = Col.RED;
	}
	
	function update() 
	{
		dialogueBox.createDialogueBox(x,y,w,h,col);
		var i = 0;
		if (Input.justpressed(Key.Z)) 
		{
			i++;
			if (i >= diagTextArr.length) {
				 // Reset index to loop back to the beginning
				 w = h = 0;
				 diagTextArr[i] = "";
			}
		}

		dialogueBox.insertText(0,Gfx.screenheight-50,diagTextArr[i],scale, Col.GREEN);
		
		
	Gfx.drawimage(x,y, "comrade");
	
	}
	
}