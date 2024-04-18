package game;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
class Game 
{
	public final SCREEN_WIDTH:Int = Gfx.screenwidth;
	public final SCREEN_HEIGHT:Int = Gfx.screenheight;
	private var image_array:Array<String> = [
		"meteor2", //0
		"smiley"
	];	//array consisting of the images we need to use	
	// var meteor = Gfx.drawimage();
	private var	meteor = {
			x : 10,
			y : 10,
			w : Gfx.imagewidth("smiley"), //fetch the width of smiley face and set it to 'w' variable
			dx : 3,
			dy : 1,
	};
	static var rotation:Float = 0;
	private function init() {
	
	}
	private function meteorTest() {
		Gfx.rotation(0);
		Gfx.drawimage(meteor.x, meteor.y, image_array[1]); //draw the smiley face :)
		meteor.x += meteor.dx;
		meteor.y += meteor.dy;
		if (meteor.x + meteor.w >= SCREEN_WIDTH || meteor.x <= 0) {
			meteor.dx = -meteor.dx;
		}
		if (meteor.y <= 0) {
			meteor.dy = -meteor.dy;
		}
	}
	
	
	private function update() {
		meteorTest();
		obstacles();
	}
	
	
	//OBSTACLES!!
	function obstacles() 
	{
		Gfx.linethickness = 15;
		
	}
	
}