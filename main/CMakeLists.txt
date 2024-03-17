# set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS ${COMPONENT_DIR}/nimcache/compile_main.sh )
# execute_process(COMMAND nim printlib OUTPUT_VARIABLE NIMLIB)
# execute_process(
#   COMMAND nim printlib
#   COMMAND nim c --nimCache:${COMPONENT_DIR}/nimcache/ --noMain --genScript --compileOnly ${COMPONENT_DIR}/main.nim
#   WORKING_DIRECTORY ${COMPONENT_DIR}
#   COMMAND_ECHO STDOUT
# )
# file(GLOB nim_sources ${COMPONENT_DIR}/nimcache/*.c )
# list(APPEND SRCS ${nim_sources})
# idf_component_register(SRCS "main.cpp" ${nim_sources}

idf_component_register(SRC_DIRS "./nimcache"
                    INCLUDE_DIRS "${CMAKE_SOURCE_DIR}"
                                 "${CMAKE_SOURCE_DIR}/include"
                    REQUIRES cxx lwip newlib nvs_flash esp_wifi M5GFX M5Unified)



# set(C_COMPILE_OPTIONS "${C_COMPILE_OPTIONS} -Wno-error=unused-label")
# list(APPEND C_COMPILE_OPTIONS "-Wno-error=unused-label ")

idf_build_set_property(C_COMPILE_OPTIONS -Wno-unused-label APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-discarded-qualifiers APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-ignored-qualifiers APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-error=unused-label APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-error=parentheses APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-error=implicit-function-declaration APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-error=maybe-uninitialized APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-error=nonnull APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-error=address APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-unused-but-set-variable APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -Wno-write-strings APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -fexceptions APPEND)
idf_build_set_property(C_COMPILE_OPTIONS -MM APPEND)

# target_compile_options(${COMPONENT_LIB} PRIVATE -I${NIMLIB} )
