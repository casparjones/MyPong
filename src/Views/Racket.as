package Views {
	import Models.ConfigurationModel;

	import flash.display.Sprite;

	/**
	 * @author frankvlatten
	 */
	public class Racket extends Sprite implements IRacket {
		public var human : Boolean = false;
		
		public var PlayerNumber : Number;
		
		private var _sw:Number; // width
		private var _sh:Number; // height
		private var _racket_height:Number;

		public function Racket() {
			var config:ConfigurationModel = ConfigurationModel.instance;
			_sw = config.sw;
			_sh = config.sh;
			_racket_height = config.racket_height;
			super();
		}
		
		public function renderPlayer1() : void {
			this.graphics.beginFill(0x000000);   
            this.graphics.drawRect(0,0,10,_racket_height);   
            this.graphics.endFill();   
			this.x = 10;
			this.y = Math.round(_sh/2-_racket_height/2);
			PlayerNumber = 1;
		}
		
		public function renderPlayer2() : void {
			this.graphics.beginFill(0x000000);   
            this.graphics.drawRect(0,0,10,_racket_height);   
            this.graphics.endFill();   
			this.x = _sw-20;
			this.y = Math.round(_sh/2-_racket_height/2);
			PlayerNumber = 2;
		}
	}
}
