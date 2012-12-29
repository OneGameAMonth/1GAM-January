package entities 
{
	import entities.components.KeyboardComponent;
	import flash.automation.KeyboardAutomationAction;
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.Mask;
	
	/**
	 * ...
	 * @author Timothy Veletta
	 */
	public class PlayerEntity extends Entity 
	{
		private var keyboard:KeyboardComponent;
		
		[Embed(source = "../../assets/images/player.png")] private const PLAYERIMAGE:Class;
		public var sprPlayerImage:Spritemap = new Spritemap(PLAYERIMAGE, 133, 140);
		
		public const playerSpeed:Number = 100.0;
		
		public function PlayerEntity(x:Number=0, y:Number=0) 
		{
			sprPlayerImage.add("stand", [0], 0, false);
			sprPlayerImage.add("walk", [0, 1, 2, 3, 4, 5, 6], 20, true);
			graphic = sprPlayerImage;
			
			type = "player";
			
			keyboard = new KeyboardComponent(this);
			
			super(x, y, graphic, mask);
		}
		
		override public function update():void 
		{
			keyboard.update();
			
			super.update();
		}
		
	}

}