#import "print-from-objc.h"

#import <Foundation/Foundation.h>

void PrintFromObjC() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSLog(@"Hello, World From Objective-C!");
  [pool drain];
}

void PrintBeginFromObjC() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSLog(@"=====BEGIN OBJECTIVE-C =====");
  [pool drain];
}

void PrintEndFromObjC() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSLog(@"=====END OBJECTIVE-C =======");
  [pool drain];
}

