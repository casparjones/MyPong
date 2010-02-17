package Views {

	/**
	 * @author frankvlatten
	 */
	public class Player1Spirte extends Racked {
		public function Player1Spirte() {
			this.graphics.beginFill(0x000000);   
            this.graphics.drawRect(0,0,10,racket_height);   
            this.graphics.endFill();   
			this.x = 10;
			this.y = Math.round(sh/2-racket_height/2);
			human = false; // overwrite because player 2 is a human
			PlayerNumber = 1;			
		}

		public function checkBall(ball : BallSprite, myMouseY:Number) : void {
			this.userInput(ball, myMouseY);
			var checkInBoard:Number = (ball.y - this.y);
			var checkInBoardY:Boolean = checkInBoard >= 0 && checkInBoard <=50;
			var checkInBoardX:Boolean = ball.x <= 20;
			if (checkInBoardX && checkInBoardY) {
				ball.changeDirectionX();
				ball.ball_j = (ball.y-(this.y+30))/2; // new speed	 	 
			}
		}
	}
}