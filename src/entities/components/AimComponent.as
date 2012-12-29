package entities.components 
{
	import entities.PlayerEntity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author ...
	 */
	public class AimComponent 
	{
		private var player:PlayerEntity;
			
		public function AimComponent(player:PlayerEntity)
		{
			this.player = player;
		}
		
		public function update():void
		{			
			Image(player.graphic).angle = FP.angle(player.x, player.y,
						player.mouse.MousePosition.x, player.mouse.MousePosition.y) - 90;
		}		
	}

}