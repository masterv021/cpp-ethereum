function(eth_apply TARGET REQUIRED)	
	find_package (OpenCL)
	eth_show_dependency(OpenCL OpenCL)
	if (OpenCL_FOUND)
		target_include_directories(${TARGET} SYSTEM PUBLIC ${OpenCL_INCLUDE_DIRS})
		target_link_libraries(${TARGET} ${OpenCL_LIBRARIES})
	elseif (NOT ${REQUIRED} STREQUAL "OPTIONAL")
		message(FATAL_ERROR "OpenCL library not found")
	endif()
endfunction()
