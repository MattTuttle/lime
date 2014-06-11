#ifndef LIME_UTILS_BYTE_ARRAY_H
#define LIME_UTILS_BYTE_ARRAY_H


#include <utils/Object.h>
#include <utils/QuickVec.h>
#include <stdio.h>


namespace lime {
	
	
	typedef unsigned char uint8;
	
	#if HX_WINDOWS
	
	typedef wchar_t OSChar;
	#define val_os_string val_wstring
	
	#else
	
	typedef char OSChar;
	#define val_os_string val_string
	
	#endif
	
	
	// If you put this structure on the stack, then you do not have to worry about GC.
	// If you store this in a heap structure, then you will need to use GC roots for mValue...
	struct ByteArray {
		
		
		ByteArray (int inSize);
		ByteArray (const ByteArray &inRHS);
		ByteArray ();
		ByteArray (struct _value *Value);
		ByteArray (const QuickVec<unsigned char> &inValue);
		
		void Resize (int inSize);
		int Size() const;
		unsigned char *Bytes ();
		const unsigned char *Bytes () const;
		bool Ok () { return mValue != 0; }
		
		struct _value *mValue;
		
		static ByteArray FromFile (const OSChar *inFilename);
		static int ToFile (const OSChar *inFilename, const ByteArray array);
		
		
	};
	
	
}


#endif
