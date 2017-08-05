cmake_minimum_required(VERSION 3.6)
project(archmage_boost)

include(ExternalProject)
ExternalProject_Add(boost
  GIT_REPOSITORY https://github.com/boostorg/boost.git
  GIT_SUBMODULES system filesystem regex
  CMAKE_ARGS
  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
  )