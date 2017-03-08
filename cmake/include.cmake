
get_filename_component(PARENT_DIR ${CMAKE_CURRENT_LIST_DIR} DIRECTORY)
include(${PARENT_DIR}/config.cmake)

macro(include_boost)
  include_directories(
    ${BOOST_PATH}
  )
endmacro()

macro(add_boost_library_path name)
  message("add_boost_library_path ${name}")
  add_external_library("${BOOST_PATH}/bin.v2/libs/${name}/build/${BOOST_SUBDIRECTORY}/debug/link-static/libboost_${name}${BOOST_LIBRARY_SUFFIX}")
endmacro()