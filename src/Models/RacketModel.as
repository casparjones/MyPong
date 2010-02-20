package Models {
	import Views.IRacket;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;

	/**
	 * @author frankvlatten
	 */
	public class RacketModel extends EventDispatcher implements IEventDispatcher {
		
		private var _player1 : AbstractRacketManager;
		private var _player2 : AbstractRacketManager;
		
		public function RacketModel() {
			super();
		}
		
		public function set player1(value : AbstractRacketManager) : void {
			_player1 = value;
			
			dispatchEvent(new RacketModelEvent(RacketModelEvent.PLAYER1));
		}
		
		public function get player1() : AbstractRacketManager {
			return _player1;
		}

		public function set player2(value : AbstractRacketManager) : void {
			_player2 = value;

			dispatchEvent(new RacketModelEvent(RacketModelEvent.PLAYER2));
		}

		public function get player2() : AbstractRacketManager {
			return _player2;
		}
	}
}
