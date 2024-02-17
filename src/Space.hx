package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;

class Space {
	//Create some arrays for the starfield.
	var star_x:Array<Int>;
	var star_y:Array<Int>;
	var star_speed:Array<Int>;
	
	function init() {
		//Initalise the arrays, and put some default values in them.
		star_x = []; star_y = []; star_speed = [];
		
		for (i in 0 ... 50) {
			star_x.push(Random.int(0, Gfx.screenwidth));  //Random x position on screen
			star_y.push(Random.int(0, Gfx.screenheight)); //Random y position on screen
			star_speed.push(Random.int(8, 16));    //Random speed between 8/16 pixels per frame
		}
	}
	
	function update() {
		//Change scene when you click the mouse.
			
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
		
		Text.size = 2;
		Text.align = Text.LEFT;
		Text.display(Text.CENTER, Text.CENTER, "GALAXY KONG!", Col.GRAY);
	 }
}
