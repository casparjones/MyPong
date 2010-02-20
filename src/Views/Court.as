package Views {
	import flash.text.TextField;
	import flash.display.Sprite;

	/**
	 * @author frankvlatten
	 */
	public class Court extends Field {
		public var Player1Point : Number = 100;
		public var Player2Point : Number = 200;
		
		private var Player1score :TextField;
		private var Player2score :TextField;

		public function Court() {
			//draw net
			var net : Sprite = new Sprite();
			net.graphics.beginFill(0x666666);
			net.graphics.drawRect(0,0,1,sh);
			net.graphics.endFill();  
			net.x = sw/2;
			net.y = 0;
			this.addChild(net);
			
			//draw scoreboard
			Player1score = new TextField();
			Player1score.selectable = false;
			Player1score.x = Math.round(sw/4);
			Player1score.y = 10;
			Player1score.text = "0";
			this.addChild(Player1score);
			
			Player2score = new TextField();
			Player2score.selectable = false;
			Player2score.x = Math.round(550 - sw/4);
			Player2score.y = 10;
			Player2score.text = "0";
			this.addChild(Player2score);				
		}

		public function checkBall(ball : BallSprite) : Number {
			if (ball.x >= sw) { // ball.y >= sh/2 || ball.y < (sh/2) * -1) {
				this.Player1PointUp(ball);
			}
			if(ball.x <= 0 ) {
				this.Player2PointUp(ball);
			}
			return 0;
		}

		public function Player1PointUp(ball : BallSprite) : void {
			Player1score.text = String(Number(Player1score.text) + 1);
			ball.reset();
			ball.start();
		}
		
		public function Player2PointUp(ball : BallSprite) : void {
			Player2score.text = String(Number(Player2score.text) + 1);
			ball.reset();
			ball.start();			
		}		
	}
}
