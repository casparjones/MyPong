package Controlers {
	import flash.events.Event;

	import Models.ConfigurationModel;
	import Models.ArtificialIntelligenceRacketManager;

	import flash.display.Stage;

	import Models.HumanRacketManager;
	import Views.*;
	import flash.display.Sprite;
	
	/**
	 * @author frankvlatten
	 */
	public class StartupControler extends Sprite {

		private var Ball: BallSprite;
		private var Player1: Racket;
		private var Player2: Racket;
		private var MyCourt: Court;
		private var _stage : Stage;

		public function Startupcontroler() :void {
			// create the coard
			
		}
		
		public function startup(stage : Stage) :void {
			_stage = stage;
			
			this.initCoard();
			this.initBall();			
			this.initPlayers();
			Ball.start();
		}
		
		private function initBall() : void {
			Ball = new BallSprite();
			addChild(Ball);
			this.addEventListener(Event.ENTER_FRAME, checkBallState);
		}


		private function checkBallState(event : Event) : void {
			MyCourt.checkBall(Ball);
		}

		private function initPlayers() :void {
			var human:HumanRacketManager;
			var ai:ArtificialIntelligenceRacketManager;
			
			Player1 = new Racket();
			Player1.renderPlayer1();
			addChild(Player1);
			Player2 = new Racket();
			Player2.renderPlayer2();
			addChild(Player2);
			if(ConfigurationModel.instance.isPlayer1Human) {
				human = new HumanRacketManager(Player1, _stage, Ball);
				human.PlayerNumber = Player1.PlayerNumber;		
			} else {
				ai = new ArtificialIntelligenceRacketManager(Player1, _stage, Ball);
				ai.PlayerNumber = Player1.PlayerNumber;
			}
			
			if(ConfigurationModel.instance.isPlayer2Human) {
				human = new HumanRacketManager(Player2, _stage, Ball);
				human.PlayerNumber = Player2.PlayerNumber;		
			} else {
				ai = new ArtificialIntelligenceRacketManager(Player2, _stage, Ball);
				ai.PlayerNumber = Player2.PlayerNumber;
			}			
			
		}
		
		private function initCoard() : void {
			MyCourt = new Court();
			addChild(MyCourt);
		}		
		
	}
}
