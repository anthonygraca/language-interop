#include "print-from-cpp.h"
#include "HelloWorld.h"

JNIEXPORT void JNICALL Java_HelloWorld_PrintFromCpp (JNIEnv *, jobject) {
  PrintFromCpp();
}
