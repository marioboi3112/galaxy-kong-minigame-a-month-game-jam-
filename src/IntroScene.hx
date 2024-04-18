package;

/**
 * ...
 * @author obi3112
 */
//THIS IS THE INTRO SCENE: THE FIRST SCENE THAT THE PLAYER WILL PLAY (TUTORIAL SCENE)

import haxegon.*;
import game.Game;
import game.Ladder;

class IntroScene 
{
	//SCENE TITLE RENDERING
	//instances
	var dialogueBox:DialogueBox = new DialogueBox();
	//variables
	var x:Int;
	var y:Int;
	var w:Int;
	var h:Int;
	var col:Dynamic;
	var diagTextArr:Array<String> = [
		"Welcome to the tutorial scene! press Z to proceed",
		"This is a test scene, the real game will start after this",
		"please use the left and right arrows to move the player left and\nright respectively",
		"get close to the ladder and press the UP arrow to climg the ladder.",
		"after you are done playing around in the intro scene \n press C to go to the LevelSelector",
	];
	var scale:Int = 2;
	var i = 0;
	var player:Dynamic;
	
	function init() //function to initialize things
	{
			
		Gfx.clearcolor = Col.BLACK;
		x = 0;
		y = Gfx.screenheight - 50;
		w = Gfx.screenwidth;
		h = 50;
		col = Col.RED;
		player = {
			w : 30,
			h : 30,
			x : 0,
			y : Gfx.screenheight,
			col : Col.BLUE,
			speed : 10, //10 pixels per frame, p/f
			
		};
		Text.display(Text.CENTER, Text.CENTER, "TUTORIAL SCENE", Col.WHITE);
		
	}
	function update() 
	{
		dialogueBox.createDialogueBox(x,y,w,h,col);
		if (Input.justpressed(Key.Z)) {i++;}
		if (i >= diagTextArr.length) 
		{
			// Reset index to loop back to the beginning
			w = h = 0;
			diagTextArr[i] = "";
		}
		if (Input.pressed(Key.C))
		{
			Scene.change(game.Game);
		}
		ladderLogic();
		if (diagTextArr[i] == "")
			playerLogic();
		
		dialogueBox.insertText(0,Gfx.screenheight-50,diagTextArr[i],scale, Col.WHITE);
		
	
	}
    
	private function playerLogic() 
	{
		Gfx.fillbox(player.x, player.y - player.h, player.w, player.h, player.col);
		//player movement
		
		if (Input.pressed(Key.LEFT))
			player.x -= player.speed;
		if (Input.pressed(Key.RIGHT))
			player.x += player.speed;
		if (Ladder.ladderAuthorized) {
			if (Input.pressed(Key.UP)) {
				player.y -= player.speed;
			}
		}
	
		if (player.y <= ladderPos.y)
			Ladder.ladderAuthorized = false;    
		
		//check if player is off screen
		if (player.x >= Gfx.screenwidth - player.w)
			player.x = Gfx.screenwidth - player.w;
		if (player.x <= 0)
			player.x = 0;
		if (player.y >= Gfx.screenheight)
			player.y = Gfx.screenheight;
		if (player.y <= 0)
			player.y = 0;
	}
	var ladder:Ladder = new Ladder();
	var ladderPos = {
		x : (Gfx.screenwidth - 64),
		y : (Gfx.screenheight - 64)
	};
	private function ladderLogic()
	{
		ladder.createLadder(ladderPos.x, ladderPos.y);
		ladder.checkDistnace(ladderPos.x, ladderPos.y, player.x, player.y);
        if (Ladder.ladderAuthorized && (Input.pressed(Key.LEFT) || Input.pressed(Key.RIGHT)))
        {
            player.x = ladderPos.x;
        }
	}	
}
