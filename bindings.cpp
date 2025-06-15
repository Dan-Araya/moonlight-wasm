#include <emscripten/bind.h>
#include <emscripten/emscripten.h>
#include <string>
#include <cstring>
#include "StreamConfiguration.h"

using namespace emscripten;

// Variables globales simples
static StreamConfiguration streamConfig;

// Configura la resolución y bitrate por defecto
void initializeStreamConfig() {
    memset(&streamConfig, 0, sizeof(streamConfig));
    streamConfig.videoFormat = VIDEO_FORMAT_H264;
    streamConfig.resolution.width = 1280;
    streamConfig.resolution.height = 720;
    streamConfig.bitrateKbps = 10000;
    streamConfig.frameRate = 60;
}

// Simula inicio de conexión y guarda config
int startConnection(std::string host, int width, int height, int bitrate) {
    streamConfig.resolution.width = width;
    streamConfig.resolution.height = height;
    streamConfig.bitrateKbps = bitrate;

    // Aquí luego puedes llamar funciones reales de Moonlight
    return 0;
}

// Función vacía para loop de Emscripten (placeholder)
void main_loop() {
    // En versiones reales deberías procesar eventos de red aquí
}

// Inicia loop infinito para mantener vivo el WASM
void startMainLoop() {
    emscripten_set_main_loop(main_loop, 0, 1); // 0 = usar vsync, 1 = loop infinito
    emscripten_exit_with_live_runtime(); // <- importante con ASYNCIFY
}

// Exportar funciones a JavaScript
EMSCRIPTEN_BINDINGS(moonlight_module) {
    function("initializeStreamConfig", &initializeStreamConfig);
    function("startConnection", &startConnection);
    function("startMainLoop", &startMainLoop);
}
