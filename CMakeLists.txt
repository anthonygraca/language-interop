cmake_minimum_required(VERSION 3.24)

#project(LanguageInterop LANGUAGES C CXX Swift OBJC Java)
project(LanguageInterop)

add_subdirectory(c)
add_subdirectory(cc)

if (APPLE)
add_subdirectory(objc)
endif()

if(0)
add_executable(main-swift main.swift print-from-c-wrapper.h print-from-c.c)
## TODO: figure out how xcode does objc and swift bridging
#target_link_libraries(main-swift print-from-c print-from-objc)

#add_executable(main-objc main.m)
#target_link_libraries(main-objc print-from-objc print-from-c print-from-cpp)


endif()

#cmake -S. -Bbuild -G Xcode && cmake --build build && ./build/Debug/main-cpp && ./build/Debug/main-swift && ./build/Debug/main-c && ./build/Debug/main-objc && java -cp build/HelloWorld.jar -Djava.library.path=build/Debug HelloWorld
#https://github.com/thefangbear/JNI-By-Examples

add_executable(main-c main.c)
target_link_libraries(main-c print-from-c print-from-cpp) # print-from-objc)

add_executable(main-cpp main.cc)
target_link_libraries(main-cpp print-from-c print-from-cpp) #print-from-objc 

include(FindJava)
include(UseJava)
include(FindJNI)
add_jar(HelloWorld java/HelloWorld.java GENERATE_NATIVE_HEADERS hello-world-native MANIFEST java/MANIFEST.MF)
add_library(hello-world SHARED c/HelloWorld.c cc/HelloWorld.cc) #HelloWorld.m)
target_link_libraries(hello-world print-from-c print-from-cpp hello-world-native) #print-from-objc 
