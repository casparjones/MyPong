package Models {
	import Views.BallSprite;

	import flash.display.Stage;

	import Views.IRacket;
	/**
	 * @author frankvlatten
	 */
	public class AbstractRacketManager {
		
		protected var _racket : IRacket;
		protected var _stage : Stage;
		protected var _ball : BallSprite;	
		
		public var PlayerNumber : Number;	
		
		
		/**
		 * Creates a new <code>AbstractRacketManager</code>.
		 * 
		 * @param racket the <code>IRacket</code> to manage.
		 */
		public function AbstractRacketManager(racket : IRacket, stage : Stage, Ball : BallSprite) {
			_racket = racket;
			_ball  = Ball;
			_stage = stage;
		}
		
		public function checkBall() : void {
			var checkInBoardY:Boolean;
			var checkInBoardX:Boolean;
			var checkInBoard:Number = (_ball.y - _racket.y);

			if(PlayerNumber == 1)			
				checkInBoardX = _ball.x <= 20;
			else
				checkInBoardX = _ball.x >= (ConfigurationModel.instance.sw - 30);			
			
			checkInBoardY = checkInBoard >= 0 && checkInBoard <=50;
			
			if (checkInBoardX && checkInBoardY) {
				_ball.changeDirectionX();
				_ball.ball_j = (_ball.y-(_racket.y+30))/2; // new speed	 	 
			}
		}		
	}
}
