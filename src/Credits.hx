package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;

class Credits extends Controls{
	
	override function init() {
	}
	override function update() {
		Text.size = 3;
		Text.display(center, 0, "CREDITS PROTOTYPE");
		Text.size = 2;
		Text.display(left, center, "CODING/MUSIC/ART: obi3112 (all by me)");
	}
}