package rl.view 
{
	import flash.display.Sprite;

	import com.headchant.asciipanel.AsciiPanel;
	
	/**
	 * ...
	 * @author szydlowski.jk
	 */
	public class PanelView extends Sprite 
	{

		public const panelX = 60 * 9;
		public const panelY = 0;
		public const panelWidth = 20;
		public const panelHeight = 25;
		
		var ascii:AsciiPanel;
		
		public function PanelView() 
		{
			x = panelX;
			y = panelY;
			ascii = new AsciiPanel(panelWidth, panelHeight);
			addChild(ascii);
			ascii.write("panel - initialized", 0, 1, 0xff00ff00);
			ascii.write("X", 0, 0)
			ascii.write("X", panelWidth - 1, 0);
			ascii.write("X", 0, panelHeight -1);
			ascii.write("X", panelWidth - 1, panelHeight - 1);
			ascii.paint();
		}
		
	}
}