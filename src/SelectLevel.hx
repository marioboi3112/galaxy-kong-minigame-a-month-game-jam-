import haxegon.*;
class SelectLevel {
	function init(){
		//Use the entire screen
		Gfx.resizescreen(0, 0);
		
		//Use a bigger font so that it looks a bit nicer
		//Tell imGui to use the default font, size 5
	}
	
  function update() {
		if (Gui.button("level1")) {
			trace("LEVEL 1 HAS STARTED");
		}	
	}
}