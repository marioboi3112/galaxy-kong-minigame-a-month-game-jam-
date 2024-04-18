//Main class for title screen and changin scene to menu
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
	static var title_x: Int = Gfx.screenwidthmid;
	static var title_y: Int = Gfx.screenheightmid;
	

	private function init() {}
	//wait for some time for title screen then load menu
	private function update()
	{
	
		//make a little title screen before changing scene over to menu

		Sound.play("test");
		Core.showstats = true;
		//change scene to menu after some time has passed
		if (Core.time >= 4) Scene.change(Space);

	}
	private static function screenTitle()
	{
		Text.size = 5;
		Text.display(title_x, title_y, "draze studios.", Col.WHITE);
	}
}
