#include <hx/CFFI.h>

#import <Metal/Metal.h>

DEFINE_KIND(kMetalDevice);
DEFINE_KIND(kMetalLibrary);

namespace lime {

	value lime_metal_create_device() {

		id<MTLDevice> device = MTLCreateSystemDefaultDevice ();
		return alloc_abstract(kMetalDevice, device);

	} DEFINE_PRIM(lime_metal_create_device,0);

	value lime_metal_create_library(value inDevice) {

		id<MTLDevice> device = (id<MTLDevice>)val_to_kind(inDevice, kMetalDevice);
		id<MTLLibrary> library = [device newDefaultLibrary];
		return alloc_abstract(kMetalLibrary, library);

	} DEFINE_PRIM(lime_metal_create_library,1);

}
