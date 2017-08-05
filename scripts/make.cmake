#get_filename_component(PARENT_DIR "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
#include(${PARENT_DIR}/config.cmake)
#
#function(build_boost toolset)
#  set(command "${BOOST_PATH}/b2")
#  message("Ruuning: ${command} ${arguments}")
#  execute_process(COMMAND
#    ${command} system filesystem regex toolset=${toolset} link=static --layout=system
#    WORKING_DIRECTORY ${BOOST_PATH}
#    RESULT_VARIABLE output
#    )
#  message(${output})
#
#endfunction()
#message("toolset = ${toolset}")
#build_boost(${toolset})