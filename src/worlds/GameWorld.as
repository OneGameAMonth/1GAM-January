package worlds
{
	import entities.EnemyEntity;
	import entities.PlayerEntity;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import flash.display.BitmapData;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author Timothy Veletta
	 */
	public class GameWorld extends World 
	{
		private var square:Entity;
		
		public function GameWorld() 
		{
			trace("GameWorld constructor");
		}
		
		override public function begin():void 
		{			
			var player:PlayerEntity = new PlayerEntity(200, 200);
			add(player);
			
			add(new EnemyEntity(200, 200));
			
			super.begin();
		}
		
		override public function update():void 
		{
			super.update();
		}
	}

}