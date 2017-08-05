cmake_minimum_required(VERSION 3.6)
project(archmage_boost)
get_filename_component(PARENT_DIR "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
set(BOOST_PATH ${PARENT_DIR}/boost)

function(build_boost toolset)
  if (toolset STREQUAL "mingw")
    set(toolset "gcc")
  endif ()

  message("toolset = ${toolset}")

  set(command "${BOOST_PATH}/b2")
  message("Running: ${command} ${arguments}")
  execute_process(COMMAND
    ${command} system filesystem regex toolset=${toolset} link=static --layout=system
    WORKING_DIRECTORY ${BOOST_PATH}
    RESULT_VARIABLE result
    OUTPUT_VARIABLE output
    ERROR_VARIABLE error
    OUTPUT_STRIP_TRAILING_WHITESPACE
    ERROR_STRIP_TRAILING_WHITESPACE
    )
  message("output ${output}")
  message("result ${result}")
  if (error)
    message("error: ${error}")
  endif ()
endfunction()
build_boost(${toolset})