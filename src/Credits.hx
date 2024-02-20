package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;

class Credits{
	//instances
	private static var btn:Button = new Button();
	var backBtn_x = 60+400;
	var backBtn_y = Gfx.screenheight - 100;
	private function init() {
	}
	private function update() {
		Text.size = 3;
		Text.display(Text.CENTER, 0, "CREDITS");
		Text.size = 2;
		Text.display(Text.LEFT, Text.CENTER, "CODING/MUSIC/ART: obi3112 (all by me)");
		backButton();
	}
	
	//back button
	
	private function backButton() {
		Text.display(backBtn_x + 15, backBtn_y + 15, "BACK");
		btn.customButton(backBtn_x, backBtn_y, 100, 40, Col.RED);
		btn.clickButton(backBtn_x, backBtn_y, 100,40,"space", Space);
	}
}