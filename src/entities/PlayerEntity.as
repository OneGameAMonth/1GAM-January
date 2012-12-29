package entities 
{
	import entities.components.AimComponent;
	import entities.components.HealthComponent;
	import entities.components.KeyboardComponent;
	import entities.components.MouseComponent;
	import flash.automation.KeyboardAutomationAction;
	import flash.geom.Point;
	import flash.ui.Mouse;
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.Mask;
	
	/**
	 * ...
	 * @author Timothy Veletta
	 */
	public class PlayerEntity extends Entity 
	{
		public var keyboard:KeyboardComponent;
		public var mouse:MouseComponent;
		public var aim:AimComponent;
		public var health:HealthComponent;
		
		[Embed(source = "../../assets/images/player.png")] private const PLAYERIMAGE:Class;
		
		public const playerSpeed:Number = 100.0;
		
		public function PlayerEntity(x:Number=0, y:Number=0) 
		{
			var playerImage:Image = new Image(PLAYERIMAGE);
			playerImage.centerOrigin();
			graphic = playerImage;
			
			type = "player";
			setHitbox(32, 32, 16, 16);
			
			keyboard = new KeyboardComponent(this);
			mouse = new MouseComponent(this);
			aim = new AimComponent(this);
			health = new HealthComponent(this, 100);
			
			super(x, y, graphic, mask);
		}
		
		override public function update():void 
		{
			keyboard.update();
			mouse.update();
			aim.update();
			
			super.update();
		}
		
		public function FireWeapon():void
		{
			world.add(new PlayerBullet(new Point(x, y),
								new Point(mouse.MousePosition.x, mouse.MousePosition.y))); 
		}
	}

}