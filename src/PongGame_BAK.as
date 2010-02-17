package {
	import flash.display.Sprite;


	/**
	 * @author frankvlatten
	 */
	public class PongGame_BAK extends Sprite {

		public function PongGame_BAK() {
			// create the coard
			// this.initCoard();
			
			// var Spieler1 : Player1Spirte = new Player1Spirte();
			// addChild(Spieler1);
		}
		
		private function initCoard() : void {
			//draw net
			var net : Sprite = new Sprite();
			net.graphics.beginFill(0x666666);
			net.graphics.drawRect(0,0,1,400);
			net.graphics.endFill();  
			net.x = 550/2;
			net.y = 0;
			this.addChild(net);
		}

	}
}
