add_library(print-from-c print-from-c.c)
add_library(print-from-c-shared SHARED print-from-c.c)
set_target_properties(print-from-c-shared PROPERTIES OUTPUT_NAME print-from-c)
