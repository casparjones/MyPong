package Views {

	/**
	 * @author frankvlatten
	 */
	public class Racked extends Field {
		public var human : Boolean = false;
		
		protected var PlayerNumber : Number = 0;
		
		private var zufall : Number;
		private var zCounter : Number;

		public function Racked() {
			zCounter = 100;
			super();
		}
		
		public function moveToBall(ball :  BallSprite) :void {
				var correction : Number;
				var speed : Number;
				
				correction = this.y - ball.y + 25; // move to ball
				speed = Math.round(correction / zufall);
												
				if(correction > 0) {
					this.y -= speed;
				} else {
					this.y += (speed*-1);	
				}			
		}
		
		public function moveToCenter() :void {
				var correction : Number;
				var speed : Number;
				
				correction = this.y - (sh/2) + 25; // move to the center of the stage
				speed = Math.round(correction / 10);					
								
				if(correction > 0) {
					this.y -= speed;
				} else {
					this.y += (speed*-1);	
				}			 
		}
		
		private function randomAIManager() : void {
				if(zCounter == 100) {
					zufall = Math.round(Math.random()*9) + 1;
					zCounter = 0;
				} else {
					zCounter++;
				}		
		}
		
		public function userInput(ball:BallSprite, myMouseY:Number):void {
			if(this.human) {
				if(myMouseY > 0) { // warum kommen hier zwei werte???
					this.y = myMouseY - 25;
				}
			} else {
				// move in directen to the ball
				var inDirectionToRaced : Boolean;
				this.randomAIManager();
			
				if(PlayerNumber == 1) {
					inDirectionToRaced = (ball.ball_i < 0);
					if(inDirectionToRaced) this.moveToBall(ball); else this.moveToCenter();
				} else {
					inDirectionToRaced = (ball.ball_i > 0);
					if(inDirectionToRaced) this.moveToBall(ball); else this.moveToCenter();
				}
			}
		}
	}
}
