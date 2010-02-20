package Models {
	import Views.Racket;
	import Views.BallSprite;

	import flash.events.Event;
	import flash.display.Stage;

	import Views.IRacket;

	/**
	 * @author frankvlatten
	 */
	public class ArtificialIntelligenceRacketManager extends AbstractRacketManager {

		private var random : Number;
		private var zCounter : Number;


		/**
		 * Creates new <code>ArtificialIntelligenceRacketManager</code>.
		 * 
		 * @param stage a <code>Stage</code> reference
		 * 
		 * @inheritDoc
		 */
		public function ArtificialIntelligenceRacketManager(racket : IRacket, stage : Stage, Ball : BallSprite) {
			super(racket, stage, Ball);
			initialize();
		}
		
		/**
		 * @private
		 */
		private function initialize() : void {
			zCounter = 100;
			_stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}

		/**
		 * @private
		 */
		private function onEnterFrame(event : Event) : void {
			moveRacket();
			checkBall();
		}

		/**
		 * @private
		 */
		private function moveRacket() :void {
				// move in directen to the ball
				var inDirectionToRaced : Boolean;
				this.randomAIManager();
				if(PlayerNumber == 1) {
					inDirectionToRaced = (_ball.ball_i < 0);
					if(inDirectionToRaced) this.moveToBall(_ball); else this.moveToCenter();
				} else {
					inDirectionToRaced = (_ball.ball_i > 0);
					if(inDirectionToRaced) this.moveToBall(_ball); else this.moveToCenter();
				}		
		}				
		
		public function moveToBall(ball :  BallSprite) :void {
				var correction : Number;
				var speed : Number;
				
				correction = _racket.y - ball.y + 25; // move to ball
				speed = Math.round(correction / random);
												
				if(correction > 0) {
					_racket.y -= speed;
				} else {
					_racket.y += (speed*-1);	
				}			
		}
		
		public function moveToCenter() :void {
				var correction : Number;
				var speed : Number;
				
				correction = _racket.y - (ConfigurationModel.instance.sh/2) + 25; // move to the center of the stage
				speed = Math.round(correction / 10);					
								
				if(correction > 0) {
					_racket.y -= speed;
				} else {
					_racket.y += (speed*-1);	
				}			 
		}
		
		private function randomAIManager() : void {
				if(zCounter == 100) {
					random = Math.round(Math.random()*9) + 1;
					zCounter = 0;
				} else {
					zCounter++;
				}		
		}	
		
	}
	
	
}
