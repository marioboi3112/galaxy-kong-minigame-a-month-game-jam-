import haxegon.*;
class SelectLevel {
	function init(){
		//Use the entire screen
		Gfx.resizescreen(0, 0);
		
		//Use a bigger font so that it looks a bit nicer
		//Tell imGui to use the default font, size 5
	}
	
  function update() {
		for (y in 0 ... 10) {
			for (x in 0 ... 10) {
				Gui.button("lel");
				Gui.shift();
				Gui.button('meow');
			} 
		}
	}
}