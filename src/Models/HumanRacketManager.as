package Models {
	import Views.BallSprite;
	import Views.IRacket;
	import flash.events.Event;
	import flash.display.Stage;

	/**
	 * @author frankvlatten
	 */
	public class HumanRacketManager extends AbstractRacketManager {
		
		/**
		 * Creates new <code>HumanRacketManager</code>.
		 * 
		 * @param stage a <code>Stage</code> reference
		 * 
		 * @inheritDoc
		 */
		public function HumanRacketManager(racket : IRacket, stage : Stage, Ball : BallSprite) {
			super(racket, stage, Ball);
			initialize();
		}
		
		/**
		 * @private
		 */
		private function initialize() : void {
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
			var usedMouseY : Number = _stage.mouseY;
			if(usedMouseY > 0) { // warum kommen hier zwei werte???
				_racket.y = usedMouseY - 25;
			}			
		}
	}
}
