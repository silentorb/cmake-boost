cmake_minimum_required(VERSION 3.6)
project(archmage_boost)
get_filename_component(PARENT_DIR "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
set(BOOST_PATH ${PARENT_DIR}/boost)

function(build_boost toolset)
  set(command "${BOOST_PATH}/b2")
  message("Ruuning: ${command} ${arguments}")
  execute_process(COMMAND
    ${command} system filesystem regex toolset=${toolset} link=static --layout=system
    WORKING_DIRECTORY ${BOOST_PATH}
    RESULT_VARIABLE output
    )
  message(${output})

endfunction()
message("toolset = ${toolset}")
build_boost(${toolset})