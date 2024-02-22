package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
import game.Game;
//NOTE! THIS IS THE MENU CLASS!, idk why i called it space lol
class Space {
	//instances
	private static var Btn:Button = new Button();
	
	//Create some arrays for the starfield.
	var star_x:Array<Int>;
	var star_y:Array<Int>;
	var star_speed:Array<Int>;
	var earth_y:Int;
	var earth_x:Int;
	function init() {
		//Initalise the arrays, and put some default values in them.
		
		star_x = []; star_y = []; star_speed = [];
		earth_y = 10; earth_x = 50;
		for (i in 0 ... 50) {
			star_x.push(Random.int(0, Gfx.screenwidth));  //Random x position on screen
			star_y.push(Random.int(0, Gfx.screenheight)); //Random y position on screen
			star_speed.push(Random.int(4, 8));    //Random speed between 8/16 pixels per frame
		}
	}
	
	function update() {
		//change scene to game when X is pressed.
		if (Input.pressed(Key.X))
		{
			Scene.change(IntroScene);
		}
		//Starfield
		Gfx.clearscreen();
		
		for (i in 0 ... 50) {
			//Draw slow stars darker than bright stars to give a parallex effect.
			if (star_speed[i] <= 12) {
				Gfx.fillbox(star_x[i], star_y[i], 4, 4, 0x222222);
			}else {
				Gfx.fillbox(star_x[i], star_y[i], 4, 4, 0x555555);
			}
			
			//Move the star position by the speed value
			star_x[i] -= star_speed[i];
			
			if (star_x[i] < -30) {
				//If the star is off screen, move it to the right hand side.
				star_x[i] += Gfx.screenwidth + 40;
				star_y[i] = Random.int(0, Gfx.screenheight);
				star_speed[i] = Random.int(8, 16);
			}
		}
		//render our earth(planet) to screen
		Gfx.rotation(23, Gfx.CENTER, Gfx.CENTER);
		Gfx.drawimage(earth_x, earth_y, "earth");
		Text.size = 2;
		Text.display(Text.CENTER, Text.CENTER, "GALAXY KONG!", Col.GRAY);
		Text.display(Text.CENTER, Text.CENTER - 30, "PRESS X TO PLAY", Col.WHITE);	
		controls();
		credits();

	}
	var controls_text_x:Int = 60;
	var controls_text_y:Int = Gfx.screenheight - 100;
	private function controls() {
		Btn.customButton(controls_text_x, controls_text_y, 140, 40, Col.RED); //control button
		Text.display(controls_text_x + 15, controls_text_y + 10, "CONTROLS");
		//mouse clicking l ogic
		Btn.clickButton(controls_text_x, controls_text_y, 140, 40, "CONTROLS", Controls); //call the function on the controls button
	}
	
	//credits section
	var credits_x = 60+200;
	var credits_y = Gfx.screenheight - 100;
	
	private function credits() {
		Btn.customButton(credits_x, credits_y, 140, 40, Col.RED);
		Text.display(credits_x + 15, credits_y + 10, "CREDITS");
		Btn.clickButton(credits_x, credits_y, 140,40,"CREDITS", Credits);
	}
	
	
}