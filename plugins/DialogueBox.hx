package;

/**
 * ...
 * @author obi3112
 */
import haxegon.*;

class DialogueBox 
{

	
	public function new() 
	{}
	private function init()
	{
		
	}
	
	public function createDialogueBox(x,y,w,h,col)
	{
		Gfx.fillbox(x,y,w,h,col);
	}

	public function insertText(x,y,str:String,scale:Int,col)
	{
		Text.size = scale;
		Text.display(x, y, str, col);
		
	}
	
	
}