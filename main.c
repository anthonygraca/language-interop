#include "c/print-from-c.h"
//#include "print-from-objc.h"
#include "cc/print-from-cpp.h"

int main() {
  PrintBeginFromC();
  PrintFromC();
  PrintFromCpp();
  //  PrintFromObjC();
  PrintEndFromC();
}
