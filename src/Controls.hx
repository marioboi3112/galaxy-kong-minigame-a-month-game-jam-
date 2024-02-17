package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;
class Controls 
{
	public var left = Text.LEFT;
	public var right = Text.RIGHT;
	public var center = Text.CENTER;
	public var bottom = Text.BOTTOM;
	public var top = Text.TOP;
	
	private function init() {}
	private function update() {
		Text.size = 4;
		Text.display(center, 0, "CONTROLS");
		//draw a line below the CONTROLS title
		Gfx.drawline(0, 22, Gfx.screenwidth+22, 0,Col.RED,0.5);
		
		Text.size = 2;
		Text.display(left, left + 40, "MOVE PLAYER: UP ARROW");
	}
	
}

