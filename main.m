#import "print-from-objc.h"

#import "print-from-c.h"
#import "print-from-cpp.h"

int main(int argc, const char * argv[]) {
  PrintBeginFromObjC();
  PrintFromObjC();
  PrintFromC();
  PrintFromCpp();
  PrintEndFromObjC();
  return 0;
    
}
