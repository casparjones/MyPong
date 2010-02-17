package Views {

	/**
	 * @author frankvlatten
	 */
	public class Player2Spirte extends Racked {

		public function Player2Spirte() {
			//draw enemy
			this.graphics.beginFill(0x000000);   
            this.graphics.drawRect(0,0,10,racket_height);   
            this.graphics.endFill();   
			this.x = sw-20;
			this.y = Math.round(sh/2-racket_height/2);
			human = true; // overwrite because player 2 is a human
			PlayerNumber = 2;			
		}
		
		public function checkBall(ball : BallSprite, myMouseY:Number) : void {
			this.userInput(ball, myMouseY);
			var checkInBoard:Number = (ball.y - this.y);
			var checkInBoardY:Boolean = checkInBoard >= 0 && checkInBoard <=50;
			var checkInBoardX:Boolean = ball.x >= (sw - 30);
			if (checkInBoardX && checkInBoardY) {
				ball.changeDirectionX();
				ball.ball_j = (ball.y-(this.y+30))/2; // new speed	 
			}
		}		
		
	}
}
