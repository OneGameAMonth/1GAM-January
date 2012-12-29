package entities.components 
{
	import entities.PlayerEntity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Timothy Veletta
	 */
	public class KeyboardComponent 
	{
		private var player:PlayerEntity;
		
		public function KeyboardComponent(player:PlayerEntity) 
		{
			this.player = player;
		}
		
		public function update():void 
		{
			if (Input.check(Key.LEFT))
			{
				player.x -= FP.elapsed * player.playerSpeed;
			}
			
			if (Input.check(Key.RIGHT))
			{
				player.x += FP.elapsed * player.playerSpeed;
			}
			
			if (Input.check(Key.UP))
			{
				player.y -= FP.elapsed * player.playerSpeed;
			}
			
			if (Input.check(Key.DOWN))
			{
				player.y += FP.elapsed * player.playerSpeed;
			}
			
			
		}
		
	}

}