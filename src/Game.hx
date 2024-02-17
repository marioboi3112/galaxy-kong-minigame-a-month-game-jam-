package;

/**
 * ...
 * @author obi3112
 */
class Game 
{
private var image_array:Array<String> = [
		"meteor2", //0

	
	];	//array consisting of the images we need to use	
	// var meteor = Gfx.drawimage();
	private static var struct = {
		meteor : {
			x : 10,
			y : 10,
			width : 64, //8 bit sprite scaled to 64 pixels 
			height : 64,//8 bit sprite scaled to 64 pixels 
			dx : 3,
			dy : 1,
		},
		
	};
	static var rotation:Float = 0;
	private function init() {
	
	}
	private function meteorTest() {
		Gfx.drawimage(struct.meteor.x,struct.meteor.y,image_array[0]);
		rotation += 3;
		Gfx.rotation(rotation, Gfx.CENTER,Gfx.CENTER);
		struct.meteor.x += struct.meteor.dx;
		struct.meteor.y += struct.meteor.dy;
		if (struct.meteor.x + struct.meteor.width >= SCREEN_WIDTH || struct.meteor.x <= 0) {
			struct.meteor.dx = -struct.meteor.dx;
		}
		if (struct.meteor.y <= 0) {
			struct.meteor.dy = -struct.meteor.dy;
		}
	}
	
	
	private function update() {
		//meteorTest();
		Scene.change(Space);
		
	}
	
}