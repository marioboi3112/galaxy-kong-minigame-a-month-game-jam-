package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
import Space;

class Main
{
	public static final SCREEN_WIDTH = Gfx.screenwidth;
	public static final SCREEN_HEIGHT = Gfx.screenheight;
	
	
	//TITLE SCREEN
	
	private function init() {}
	//wait for some time for title screen then load menu
	private function update() {
		Scene.change(Space);
	}
	
}
