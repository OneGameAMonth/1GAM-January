package  
{
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
			var image:Image = new Image(new BitmapData(16, 16, true, 0xffffffff));
			square = new Entity(0, 0, image);
			add(square);
			
			var player:PlayerEntity = new PlayerEntity(100, 100);
			add(player);
			
			super.begin();
		}
		
		override public function update():void 
		{
			square.x = Input.mouseX;
			square.y = Input.mouseY;
			
			if (Input.mousePressed)
			{
				trace("Mouse pressed");
			}
			super.update();
		}
	}

}