get_filename_component(PARENT_DIR "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
get_filename_component(PARENT_DIR "${PARENT_DIR}" DIRECTORY)
include(${PARENT_DIR}/scripts/include.cmake)
include_boost()