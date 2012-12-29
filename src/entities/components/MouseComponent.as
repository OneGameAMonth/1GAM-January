package entities.components 
{
	import entities.PlayerEntity;
	import flash.geom.Point;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author ...
	 */
	public class MouseComponent 
	{
		private var player:PlayerEntity;
		
		public var MousePosition:Point;
		
		public function MouseComponent(player:PlayerEntity) 
		{
			this.player = player;
			MousePosition = new Point(FP.world.mouseX, FP.world.mouseY);
		}
		
		public function update():void
		{
			MousePosition.x = Input.mouseX;
			MousePosition.y = Input.mouseY;
			
			if (Input.mousePressed)
			{
				player.FireWeapon();
			}
		}
	}

}