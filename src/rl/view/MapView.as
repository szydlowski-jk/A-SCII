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

		const mapX = 0;
		const mapY = 0;
		const mapWidth = 60;
		const mapHeight = 25;
		
		var ascii:AsciiPanel;
		
		public function MapView() 
		{
			x = mapX;
			y = mapY;
			ascii = new AsciiPanel(mapWidth, mapHeight);
			addChild(ascii);
			ascii.write("map - initialized", 0, 1, 0xff00ff00);
			ascii.write("X", 0, 0)
			ascii.write("X", mapWidth - 1, 0);
			ascii.write("X", 0, mapHeight -1);
			ascii.write("X", mapWidth - 1, mapHeight - 1);

			fill("#");
			
			ascii.paint();
		}
		
		public function fill(s:String):void
		{
			for(var x:int = 0; x < mapWidth; x++)
				for(var y:int = 0; y < mapHeight; y++)
				{
					ascii.write(s, x, y, 0xffffffff, 0xff000000);
				}
		}
		
	}

}