package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
class Controls 
{
	private static var left = Text.LEFT;
	private static var right = Text.RIGHT;
	private static var center = Text.CENTER;
	private static var bottom = Text.BOTTOM;
	private static var top = Text.TOP;
	
	private function init() {}
	private function update() {
		Text.size = 4;
		Text.display(center, 0, "CONTROLS");
		//draw a line below the CONTROLS title
		Gfx.drawline(0, 22, Gfx.screenwidth, 0);
		
		Text.size = 2;
		Text.display(left, left + 40, "MOVE PLAYER: UP ARROW");
	}
	
}