
get_filename_component(PARENT_DIR "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
include(${PARENT_DIR}/config.cmake)

# Get compiler-specific boost path
if (GCC OR MINGW)
  set(boost_toolset gcc)
elseif (MSVC)
  set(boost_toolset msvc)
endif ()

if (NOT boost_toolset)
  message(FATAL_ERROR "Unsupported compiler.")
endif ()

macro(include_boost)
  include_directories(
    ${BOOST_PATH}
  )
endmacro()

macro(add_boost_library_path name)
  file(GLOB BOOST_SUBDIRECTORY "${BOOST_PATH}/bin.v2/libs/${name}/build/${boost_toolset}*")
  if (MSVC)
    set(extension "lib")
  else ()
    set(extension "a")
  endif ()
#    message("${boost_toolset}")
#  message("BOOST_SUBDIRECTORY ${BOOST_SUBDIRECTORY}")
#  message(FATAL_ERROR "Stopping.")
  add_external_library("${BOOST_SUBDIRECTORY}/debug/link-static/libboost_${name}.${extension}")
endmacro()