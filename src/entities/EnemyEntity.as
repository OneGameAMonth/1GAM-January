package entities 
{
	import entities.components.HealthComponent;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author ...
	 */
	public class EnemyEntity extends Entity
	{
		[Embed(source = "../../assets/images/enemy.png")] private const ENEMYIMAGE:Class;
		
		private var health:HealthComponent;
		
		public function EnemyEntity(x:Number = 0, y:Number = 0) 
		{
			var enemyImage:Image = new Image(ENEMYIMAGE);
			enemyImage.centerOrigin();
			graphic = enemyImage;
			
			type = "enemy";
			setHitbox(32, 32, 16, 16);
			
			health = new HealthComponent(this, 100);
			
			super(x, y, graphic, mask);
		}
		
		override public function update():void 
		{
			var b:Bullet = collide("playerbullet", x, y) as Bullet;
			
			if (b)
			{
				health.changeHealth(-b.bulletDamage);
				b.destroy();
			}
			
			if (health.isDead())
			{
				FP.world.remove(this);
			}
			
			super.update();
		}
		
	}

}