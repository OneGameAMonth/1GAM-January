package entities 
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author ...
	 */
	public class PlayerBullet extends Bullet 
	{
		
		public function PlayerBullet(startPos:Point, endPos:Point) 
		{			
			super(startPos, endPos);
			
			type = "playerbullet";
		}
		
	}

}