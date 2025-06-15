cmake_minimum_required(VERSION 3.13)
project(moonlight_wasm)

# Estándar de C++
set(CMAKE_CXX_STANDARD 17)

# Ruta al código fuente de moonlight-common-c
set(MOONLIGHT_SRC_DIR "${CMAKE_SOURCE_DIR}/moonlight-common-c")

# Incluir headers de moonlight-common-c y submódulos
include_directories(${MOONLIGHT_SRC_DIR}/include)
include_directories(${MOONLIGHT_SRC_DIR}/src)                 # Para StreamConfiguration.h, ClientConnection.h
include_directories(${MOONLIGHT_SRC_DIR}/enet/include)

# Incluir MbedTLS completo como subdirectorio (usa su CMake oficial)
set(ENABLE_TESTING OFF CACHE BOOL "" FORCE)                   # Desactiva tests
set(ENABLE_PROGRAMS OFF CACHE BOOL "" FORCE)                  # Desactiva binarios
set(USE_SHARED_MBEDTLS_LIBRARY OFF CACHE BOOL "" FORCE)       # Fuerza linking estático
add_subdirectory(${MOONLIGHT_SRC_DIR}/external/mbedtls mbedtls-lib-build)

# Incluir headers de MbedTLS
include_directories(${MOONLIGHT_SRC_DIR}/external/mbedtls/include)

# Incluir moonlight-common-c como subdirectorio
add_subdirectory(${MOONLIGHT_SRC_DIR} build-moonlight)

# Archivos fuente del binding WebAssembly
set(SOURCES bindings.cpp)
add_executable(moonlight.js ${SOURCES})

# Linkeo con moonlight-common-c y MbedTLS
target_link_libraries(moonlight.js
        moonlight-common-c
        mbedcrypto
)

# Opciones de salida WebAssembly
set_target_properties(moonlight.js PROPERTIES
        LINK_FLAGS "--bind -s MODULARIZE=1 -s EXPORT_NAME=createMoonlightModule -s ENVIRONMENT=web -s ALLOW_MEMORY_GROWTH=1 -s ASYNCIFY -s EXPORTED_RUNTIME_METHODS='[\"ccall\",\"cwrap\"]'"
        OUTPUT_NAME "moonlight"
)
