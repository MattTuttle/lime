package lime.graphics;
#if js
typedef GLTexture = js.html.webgl.Texture;
#elseif cpp
typedef GLTexture = Int;
#else


class GLTexture extends GLObject {
	
	
	private override function getType ():String {
		
		return "Texture";
		
	}
    
    
}


#end