package lime.graphics;
#if js
typedef GLRenderbuffer = js.html.webgl.Renderbuffer;
#elseif cpp
typedef GLRenderbuffer = Int;
#else


class GLRenderbuffer extends GLObject {
	
	
	private override function getType ():String {
		
		return "Renderbuffer";
		
	}
    
    
}


#end