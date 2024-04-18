import haxegon.*;
class SelectLevel {
	//instances
	var btn:Button = new Button();
	//LEVELS
	var lvl1 = {
		x : 10,
		y : 40,
		w : 60,
		h : 30,
		col : Col.RED;
	};
	
	function init(){
		//Use the entire screen
		Gfx.resizescreen(0, 0);
		
		//Use a bigger font so that it looks a bit nicer
		//Tell imGui to use the default font, size 5
	}
	function update() {
		btn.customButton();
		btn.clickButton();
	}
}