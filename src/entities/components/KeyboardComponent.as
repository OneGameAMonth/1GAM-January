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
			
			Input.define("left", Key.A);
			Input.define("right", Key.D);
			Input.define("up", Key.W);
			Input.define("down", Key.S);
		}
		
		public function update():void 
		{
			if (Input.check("left"))
			{
				player.x -= FP.elapsed * player.playerSpeed;
			}
			
			if (Input.check("right"))
			{
				player.x += FP.elapsed * player.playerSpeed;
			}
			
			if (Input.check("up"))
			{
				player.y -= FP.elapsed * player.playerSpeed;
			}
			
			if (Input.check("down"))
			{
				player.y += FP.elapsed * player.playerSpeed;
			}
			
			
		}
		
	}

}