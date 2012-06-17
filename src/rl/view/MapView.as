package rl.view 
{
	import flash.display.Sprite;
	
	import com.headchant.asciipanel.AsciiPanel;
	
	/**
	 * ...
	 * @author szydlowski.jk
	 */
	public class MapView extends Sprite 
	{

		const mapWidth = 60;
		const mapHeight = 25;
		
		var ascii:AsciiPanel;
		
		public function MapView() 
		{
			ascii = new AsciiPanel(mapWidth, mapHeight);
			addChild(ascii);
			ascii.write("map - initialized", 0, 1, 0xff00ff00);
			ascii.write("X", 0, 0)
			ascii.write("X", mapWidth - 1, 0);
			ascii.write("X", 0, mapHeight -1);
			ascii.write("X", mapWidth - 1, mapHeight - 1);

			ascii.paint();
		}
		
	}

}