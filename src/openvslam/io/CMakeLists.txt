# Add sources
target_sources(${PROJECT_NAME}
               PRIVATE
               ${CMAKE_CURRENT_SOURCE_DIR}/trajectory_io.h
               ${CMAKE_CURRENT_SOURCE_DIR}/map_database_io.h
               ${CMAKE_CURRENT_SOURCE_DIR}/trajectory_io.cc
               ${CMAKE_CURRENT_SOURCE_DIR}/map_database_io.cc)


# cuda_include_directories(
# ${CUDA_TOOLKIT_ROOT_DIR}/samples/common/inc
# )
        
# cuda_add_library(${PROJECT_NAME} SHARED
# ${CMAKE_CURRENT_SOURCE_DIR}/trajectory_io.cc
# ${CMAKE_CURRENT_SOURCE_DIR}/map_database_io.cc)

# Install headers
file(GLOB HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/*.h")
install(FILES ${HEADERS}
        DESTINATION ${OPENVSLAM_INCLUDE_INSTALL_DIR}/io)
