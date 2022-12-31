cmake_minimum_required(VERSION 3.24)

project(LanguageInterop LANGUAGES C CXX Swift OBJC Java)

add_library(print-from-c print-from-c.c)
add_library(print-from-objc print-from-objc.m)
target_link_libraries(print-from-objc "-framework Foundation")
add_library(print-from-cpp print-from-cpp.cc)

add_executable(main-cpp main.cc)
target_link_libraries(main-cpp print-from-objc print-from-c print-from-cpp)

add_executable(main-swift main.swift print-from-c-wrapper.h print-from-c.c)
## TODO: figure out how xcode does objc and swift bridging
#target_link_libraries(main-swift print-from-c print-from-objc)

add_executable(main-c main.c)
target_link_libraries(main-c print-from-c print-from-cpp print-from-objc)

add_executable(main-objc main.m)
target_link_libraries(main-objc print-from-objc print-from-c print-from-cpp)

include(FindJava)
include(UseJava)
include(FindJNI)
add_jar(HelloWorld HelloWorld.java GENERATE_NATIVE_HEADERS hello-world-native MANIFEST MANIFEST.MF)
add_library(hello-world SHARED HelloWorld.c HelloWorld.cc HelloWorld.m)
target_link_libraries(hello-world print-from-c print-from-cpp print-from-objc hello-world-native)

#cmake -S. -Bbuild -G Xcode && cmake --build build && ./build/Debug/main-cpp && ./build/Debug/main-swift && ./build/Debug/main-c && ./build/Debug/main-objc && java -cp build/HelloWorld.jar -Djava.library.path=build/Debug HelloWorld
#https://github.com/thefangbear/JNI-By-Examples
