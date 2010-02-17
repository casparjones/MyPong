package Views {
	import flash.events.Event;
	import flash.display.Sprite;

	/**
	 * @author frankvlatten
	 */
	public class BallSprite extends Field {
		private var ball_size:Number = 6;
		public var ball_i:Number;
		public var ball_j:Number;
		
		public function BallSprite() {
			
			ball_i = 3;
			ball_j = 3;

			//draw ball
			this.graphics.beginFill(0x000000);   
            this.graphics.drawRect(0,0,ball_size,ball_size);   
            this.graphics.endFill();
			this.x = sw/2;
			this.y = sh/2;
			this.addEventListener(Event.ENTER_FRAME, b_ENTERFRAME);
			
		}
		
		public function reset() : void {
			this.x = sw/2;
			this.y = sh/2;			
		}
		
		public function start() : void{
			
			if (Math.random()*3>1) 
			{
				ball_i = 8+Math.random()*3;
				} 
				else 
				{
					ball_i = -8-Math.random()*3;
               }
				
			ball_j = Math.random()*4;
			
			// debug
			// ball_j = 0;
			// ball_i = 1;
		}
		
		public function changeDirectionX() :void {
			ball_i *= -1;
		}
		
		public function changeDirectionY() :void {
			ball_j *= -1;
		}

		private function b_ENTERFRAME(e : Event) : void {
			this.x = this.x + ball_i;		// ball movement and speed
			this.y = this.y + ball_j;
			
			if (this.y >= sh || this.y <= 0) {
				this.changeDirectionY();
			}
			if(this.x >= sw || this.x <= 0 ) {
				this.changeDirectionX();
			}
		}
	}
}
