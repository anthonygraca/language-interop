extern "C" {
#include "print-from-c.h"
#include "print-from-objc.h"
}

#include "print-from-cpp.h"

int main() {
  PrintBeginFromCpp();
  PrintFromCpp();
  PrintFromObjC();
  PrintFromC();
  PrintEndFromCpp();
}
