#include "print-from-c.h"
#include "HelloWorld.h"

JNIEXPORT void JNICALL Java_HelloWorld_PrintFromC (JNIEnv * e, jobject o) {
  PrintFromC();
}
