package {
	import flash.display.Sprite;
	import Controlers.StartupControler;

	/**
	 * @author frankvlatten
	 */
	public class MyPong extends Sprite {

		
		public function MyPong() {
			var startUp : StartupControler = new StartupControler();
			startUp.startup(stage);
			addChild(startUp);
		}
	}
}
