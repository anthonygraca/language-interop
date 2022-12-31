#include "print-from-objc.h"
#include "HelloWorld.h"

JNIEXPORT void JNICALL Java_HelloWorld_PrintFromObjC (JNIEnv * e, jobject o) {
  PrintFromObjC();
}
