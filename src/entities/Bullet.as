package entities 
{
	import flash.geom.Point;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Bullet extends Entity
	{
		private const bulletSpeed:Number = 300.0;
		private var direction:Point;
		private var aliveTime:Number = 0.0;
		
		public const bulletDamage:int = 40.0;
		
		[Embed(source = "../../assets/images/bullet.png")] private const BULLETIMAGE:Class;
		
		public function Bullet(startPos:Point, endPos:Point) 
		{
			var bulletImage:Image = new Image(BULLETIMAGE);
			bulletImage.centerOrigin();
			bulletImage.angle = FP.angle(startPos.x, startPos.y,
						endPos.x, endPos.y) - 90;
			graphic = bulletImage;
			
			type = "bullet"
			setHitbox(5, 5, 3, 3);
			
			direction = new Point(endPos.x - startPos.x, endPos.y - startPos.y);
			direction.normalize(1);
			
			super(startPos.x, startPos.y, graphic, mask);
		}
		
		override public function update():void 
		{
			aliveTime += FP.elapsed;
			
			moveBy(direction.x * bulletSpeed * FP.elapsed,
					direction.y * bulletSpeed * FP.elapsed);
					
			if (aliveTime > 3.0)
			{
				world.remove(this);
			}
			
			super.update();
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
	}

}