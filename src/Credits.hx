package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;

class Credits{
	
	private function init() {
	}
	private function update() {
		Text.size = 3;
		Text.display(Text.CENTER, 0, "CREDITS");
		Text.size = 2;
		Text.display(Text.LEFT, Text.CENTER, "CODING/MUSIC/ART: obi3112 (all by me)");
	}
}