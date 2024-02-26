package game;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
class Ladder
{
	public static var ladderAuthorized:Bool = false;
	public function new()
	{
		init();
	}
	private function init()
	{
		Gfx.loadimage('ladder');
	}
	public function createLadder(x,y)
	{
		Gfx.scale(4, 4, Gfx.CENTER, Gfx.CENTER);
		Gfx.rotation(0);
		Gfx.drawimage(x,y,"ladder");
	}
	
	public function checkDistnace(ladder_x,  ladder_y, x, y)
	{
		if (ladder_x - x <= 10 && ladder_y - y <= 10)
		{
			Text.display(ladder_x - 20, ladder_y -10, "PRESS UP ARROW", Col.WHITE);
			ladderAuthorized = true;	
		}
        else {
            ladderAuthorized = false;
        }
	}
}