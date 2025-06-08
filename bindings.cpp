#include <emscripten/bind.h>
#include <string>
#include <cstring>

#include "StreamConfiguration.h"

using namespace emscripten;

// Variables globales simples
static StreamConfiguration streamConfig;

void initializeStreamConfig() {
    memset(&streamConfig, 0, sizeof(streamConfig));
    streamConfig.videoFormat = VIDEO_FORMAT_H264;
    streamConfig.resolution.width = 1280;
    streamConfig.resolution.height = 720;
    streamConfig.bitrateKbps = 10000;
    streamConfig.frameRate = 60;
}

int startConnection(std::string host, int width, int height, int bitrate) {
    // Simulación básica: modifica la configuración y retorna éxito
    streamConfig.resolution.width = width;
    streamConfig.resolution.height = height;
    streamConfig.bitrateKbps = bitrate;

    // Aquí podrías agregar logs o debug prints si deseas
    return 0;  // 0 = éxito simulado
}

EMSCRIPTEN_BINDINGS(moonlight_module) {
    function("initializeStreamConfig", &initializeStreamConfig);
    function("startConnection", &startConnection);
}
