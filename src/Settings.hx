package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
class Settings 
{
	function init()
	{}
	function update()
	{
		Text.size = 5;
		Text.display(Gfx.screenwidthmid, Gfx.screenheightmid, "SETTING", Col.RED, 0.5);
	}
}