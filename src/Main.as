package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import worlds.GameWorld;
	
	/**
	 * ...
	 * @author Timothy Veletta
	 */
	public class Main extends Engine
	{
		
		public function Main():void
		{
			super(640, 480); // width and height of game
			
			
		}
		
		override public function init():void 
		{
			trace("FlashPunk has initialised.");
			FP.world = new GameWorld();
			FP.console.enable();
			super.init();
		}
		
	}
	
}