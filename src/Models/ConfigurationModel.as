package Models {
	import mx.core.Singleton;

	/**
	 * @author frankvlatten
	 */
	public class ConfigurationModel extends Singleton {
		private static var _instance : ConfigurationModel;
		
		public var sw:Number = 550; // width
		public var sh:Number = 400; // height
		public var racket_height:Number = 50;
		public var myMouseY:Number;	
		
		public var isPlayer1Human : Boolean = false;
		public var isPlayer2Human : Boolean = true;	

		public function ConfigurationModel(se:SingletonEnforcer) {
		}
		
		public static function get instance():ConfigurationModel {
			if(ConfigurationModel._instance == null) {
				ConfigurationModel._instance = new ConfigurationModel(new SingletonEnforcer() );
			}
			return ConfigurationModel._instance;
		}		
	}
}
