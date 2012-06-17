package rl {
	import flash.display.DisplayObjectContainer;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	import rl.view.MapView;
	import rl.view.PanelView;
	
	/**
	 * <p>
	 * Description
	 * </p>
	 *
	 * @class MainContext
	 * @author szydlowski.jk
	 * @date 06-17-2012
	 * @version 1.0
	 * @see
	 */
	
	public class MainContext extends Context {
		
		/**
		* Constructor
		*/
		public function MainContext(contextView:DisplayObjectContainer) {
			super(contextView);
		}		
		/*-----------------------------------------------------------------------------------------
		Public methods
		-------------------------------------------------------------------------------------------*/
		override public function startup():void{
			
			//commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, CreateModelsCommand, ContextEvent, true);
			//commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, CreateMediatorsCommand, ContextEvent, true);

			
			// debug add mapview
			contextView.addChild(new MapView);
			contextView.addChild(new PanelView);
			
			
			super.startup();
		}
		/*-----------------------------------------------------------------------------------------
		Private methods
		-------------------------------------------------------------------------------------------*/
		
		/*-----------------------------------------------------------------------------------------
		Event Handlers
		-------------------------------------------------------------------------------------------*/
    }
	
}