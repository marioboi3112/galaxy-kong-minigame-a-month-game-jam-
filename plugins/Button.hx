package;

/**
 * ...
 * @author obi3112
 */

 
//THIS IS MY OWN PLUGIN
//NOT FROM HAXEGON :)
import haxegon.*;
class Button 
{

	public function new() {} //empty constructor
	
	public function clickButton(x, y, w, h, str:String, scene:Class<Dynamic>) {
		for (i in x ... x + w) {
			for (j in y ... y + h) {
				if (Mouse.x == i && Mouse.y == j && Mouse.leftclick()) {
						trace(str);
						Scene.change(scene);
				}
			}
		}
	}
	
	public function customButton(x,y,width,height,col) {
		Gfx.drawbox(x,y,width,height,col);
	}
}