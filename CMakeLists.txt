cmake_minimum_required(VERSION 3.10)

project(Addition)

# set(matlab_root <path/to/matlab/RXXXXx>)
# for my machine it is
# set(matlab_root /usr/local/MATLAB/R2020b)

string(ASCII 27 ESCAPE)
if (NOT DEFINED matlab_root)
  message(FATAL_ERROR "${ESCAPE}[31mPlease set the matlab root in CMakeLists.txt${ESCAPE}[0m")
endif()

include_directories("./Addition/" "${matlab_root}/extern/include")

add_executable(addition_main 
                  "matlab_code/example_for_readme/main_addition_test.cpp"
                  "Addition/Addition.cpp")