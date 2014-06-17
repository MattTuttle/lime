package lime.graphics.metal;

class Metal {

	public static inline function createDevice ():Void {

		lime_metal_create_device ();

	}

	private static var lime_metal_create_device = System.load ("lime", "lime_metal_create_device", 0);
	private static var lime_metal_create_library = System.load ("lime", "lime_metal_create_library", 1);

}
