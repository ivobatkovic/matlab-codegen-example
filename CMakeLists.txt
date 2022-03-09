cmake_minimum_required(VERSION 3.10)

project(Addition)
add_executable(addition_main matlab_code/example_for_readme/main_addition_test.cpp)
set_property(TARGET addition_main PROPERTY CXX_STANDARD 14)
