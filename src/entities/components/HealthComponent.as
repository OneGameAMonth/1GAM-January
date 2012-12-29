package entities.components 
{
	import net.flashpunk.Entity;
	/**
	 * ...
	 * @author ...
	 */
	public class HealthComponent 
	{
		private var entity:Entity;
		
		private var currentHealth:int;
		private var maxHealth:int;
		
		public function HealthComponent(entity:Entity, max:int) 
		{
			this.entity = entity;
			
			if (max >= 0)
			{
				maxHealth = max;
				currentHealth = max;
			}
			else
			{
				maxHealth = 100;
				currentHealth = 100;
			}
		}
		
		public function changeHealth(amount:int):void
		{
			currentHealth += amount;
			
			if (currentHealth >= maxHealth)
			{
				currentHealth = maxHealth;
			}
			else if (currentHealth <= 0)
			{
				currentHealth = 0;
			}
		}
		
		public function getCurrentHealth():int
		{
			return currentHealth;
		}
		
		public function getMaxHealth():int
		{
			return maxHealth;
		}
		
		public function changeMaxHealth(amount:int):void
		{
			maxHealth += amount;
			
			if (maxHealth <= 0)
			{
				maxHealth = 0;
			}
		}
		
		public function isDead():Boolean
		{
			if (currentHealth <= 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
	}
}