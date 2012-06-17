package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.StageScaleMode;
	
	import rl.MainContext;
	
	[SWF(width = "720", height = "400", framerate = "30", backgroundColor = "#333333")]
	
	/**
	 * ...
	 * @author szydlowski.jk
	 */
	
	public class Main extends Sprite 
	{
		protected var context:MainContext;

		public function Main():void
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			context = new MainContext(this);
		}
	}
	
}