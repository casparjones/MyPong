package {
	import flash.events.Event;
	import Views.*;
	import flash.display.Sprite;

	/**
	 * @author frankvlatten
	 */
	public class MyPong extends Sprite {
		private var Ball: BallSprite;
		private var Spieler1: Player1Spirte;
		private var Spieler2: Player2Spirte;
		private var MyCoard: Coard;
		
		public function MyPong() {
			// create the coard
			this.initCoard();
			this.initPlayers();
			this.initBall();
			Ball.start();
		}
		
		private function initBall() : void {
			Ball = new BallSprite();
			addChild(Ball);
			this.addEventListener(Event.ENTER_FRAME, checkBallState);
		}

		private function checkBallState(event : Event) : void {
			Spieler1.checkBall(Ball, mouseY);
			Spieler2.checkBall(Ball, mouseY);
			MyCoard.checkBall(Ball);
			MyCoard.checkBall(Ball);
		}

		private function initPlayers() :void {
			Spieler1 = new Player1Spirte();
			addChild(Spieler1);
			Spieler2 = new Player2Spirte();
			addChild(Spieler2);
		}
		
		private function initCoard() : void {
			MyCoard = new Coard();
			addChild(MyCoard);
		}
	}
}
