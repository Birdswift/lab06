include(CPack)
set(CPACK_GENERATOR "DEB")
set(CPACK_PACKAGE_NAME "Solver")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Birdswift inc.")
set(CPACK_PACKAGE_DESCRIPTION "Solver")
install(TARGETS solver DESTINATION bin)
install(FILES equation.cpp
	              ../formatter_lib/formatter.cpp
		      ../formatter_ex_lib/formatter_ex.cpp
		      ../solver_lib/solver.cpp
		DESTINATION code)
	install(TARGETS formatter_ex solver_lib LIBRARY DESTINATION lib)
install(TARGETS solver DESTINATION bin)
