package;

/**
 * ...
 * @author obi3112
 */

import haxegon.*;
class Controls {
	//instances
	private static var btn:Button = new Button();
	public static var left = Text.LEFT;
	public static var right = Text.RIGHT;
	public static var center = Text.CENTER;
	public static var bottom = Text.BOTTOM;
	public static var top = Text.TOP;
	var backBtn_x = 60+400;
	var backBtn_y = Gfx.screenheight - 100;
	private function init() {}
	private function update() {
		Text.size = 4;
		Text.display(center, 0, "CONTROLS");
		//draw a line below the CONTROLS title
		Gfx.drawline(0, 22, Gfx.screenwidth, 22,Col.RED,0);
		
		Text.size = 2;
		Text.display(left, left + 40, "You can move the player by using:- \n - LEFT ARROW: MOVE LEFT \n \n RIGHT ARROW: MOVE RIGHT \n \n UP ARROW: MOVE PLAYER UP ON LADDERS");	
		//make the back button for the controls section
		backButton();
		
	}
	
	//back button
	
	private function backButton() {
		Text.display(backBtn_x + 15, backBtn_y + 15, "BACK");
		btn.customButton(backBtn_x, backBtn_y, 100, 40, Col.RED);
		btn.clickButton(backBtn_x, backBtn_y, 100,40,"space", Space);
	}
	
}

