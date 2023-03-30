cmake_minimum_required(VERSION 3.5)

project(Solver)

add_executable(solver solver.cpp)

add_library(formatter_lib STATIC ../formatter_lib/formatter.cpp)
add_library(formatter_ex_lib STATIC ../formatter_ex_lib/formatter_ex.cpp)
add_library(solver_lib SHARED ../solver_lib/solver.cpp)

target_link_libraries(solver_lib formatter_lib formatter_ex_lib)

install(TARGETS solver solver_lib
RUNTIME DESTINATION bin
LIBRARY DESTINATION lib)

install(FILES equation.cpp
DESTINATION code)

set(CPACK_GENERATOR "DEB")
set(CPACK_PACKAGE_NAME "Solver")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Birdswift inc.")
set(CPACK_PACKAGE_DESCRIPTION "Solver")

include(CPack)
