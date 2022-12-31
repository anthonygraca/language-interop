add_library(print-from-cpp print-from-cpp.cc)
add_library(print-from-cpp-shared SHARED print-from-cpp.cc)
set_target_properties(print-from-cpp-shared PROPERTIES OUTPUT_NAME print-from-cpp)
