package Models {
	import flash.events.Event;

	/**
	 * @author frankvlatten
	 */
	public class RacketModelEvent extends Event {
		
		public static const PLAYER1 : String = "player1";
		public static const PLAYER2 : String = "player2";
		
		public function RacketModelEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}
	}
}
