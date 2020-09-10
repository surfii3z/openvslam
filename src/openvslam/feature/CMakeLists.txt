# Add sources
target_sources(${PROJECT_NAME}
               PRIVATE
               ${CMAKE_CURRENT_SOURCE_DIR}/orb_params.h
               ${CMAKE_CURRENT_SOURCE_DIR}/orb_extractor.h
               ${CMAKE_CURRENT_SOURCE_DIR}/orb_extractor_node.h
               ${CMAKE_CURRENT_SOURCE_DIR}/orb_params.cc
               ${CMAKE_CURRENT_SOURCE_DIR}/orb_extractor.cc
               ${CMAKE_CURRENT_SOURCE_DIR}/orb_extractor_node.cc)

# cuda_include_directories(
#         ${CUDA_TOOLKIT_ROOT_DIR}/samples/common/inc
# )
              
# cuda_add_library(${PROJECT_NAME} SHARED
#                 ${CMAKE_CURRENT_SOURCE_DIR}/orb_params.cc
#                 ${CMAKE_CURRENT_SOURCE_DIR}/orb_extractor.cc
#                 ${CMAKE_CURRENT_SOURCE_DIR}/orb_extractor_node.cc
#                 )
# Install headers
file(GLOB HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/*.h")
install(FILES ${HEADERS}
        DESTINATION ${OPENVSLAM_INCLUDE_INSTALL_DIR}/feature)
