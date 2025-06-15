#include <emscripten/bind.h>
#include <emscripten/emscripten.h>
#include <string>
#include <cstring>
#include <cstdio>
#include "StreamConfiguration.h"

using namespace emscripten;

// Variables globales simples
static StreamConfiguration streamConfig;
static bool isMainLoopRunning = false;
static int frameCounter = 0;

// Configura la resolución y bitrate por defecto
void initializeStreamConfig() {
    memset(&streamConfig, 0, sizeof(streamConfig));
    streamConfig.videoFormat = VIDEO_FORMAT_H264;
    streamConfig.resolution.width = 1280;
    streamConfig.resolution.height = 720;
    streamConfig.bitrateKbps = 10000;
    streamConfig.frameRate = 60;

    printf("Stream config initialized: %dx%d @ %d kbps\n",
           streamConfig.resolution.width,
           streamConfig.resolution.height,
           streamConfig.bitrateKbps);
}

// Simula inicio de conexión y guarda config
int startConnection(std::string host, int width, int height, int bitrate) {
    streamConfig.resolution.width = width;
    streamConfig.resolution.height = height;
    streamConfig.bitrateKbps = bitrate;

    printf("Starting connection to %s: %dx%d @ %d kbps\n",
           host.c_str(), width, height, bitrate);

    // Aquí luego puedes llamar funciones reales de Moonlight
    // Por ejemplo: LiStartConnection(&streamConfig);

    return 0;
}

// Función de loop que ahora hace algo útil
void main_loop() {
    frameCounter++;

    // Mostrar progreso cada 60 frames (aprox 1 segundo a 60fps)
    if (frameCounter % 60 == 0) {
        printf("Main loop running - frame %d\n", frameCounter);
    }

    // Aquí deberías procesar eventos de red
    // Por ejemplo:
    // LiProcessNetworkPackets();
    // LiSendHeartbeat();

    // Simular algo de trabajo para evitar optimizaciones del navegador
    static int dummy = 0;
    dummy = (dummy + 1) % 1000;
}

// Inicia loop infinito para mantener vivo el WASM
void startMainLoop() {
    if (isMainLoopRunning) {
        printf("Main loop already running\n");
        return;
    }

    printf("Starting main loop...\n");
    isMainLoopRunning = true;
    frameCounter = 0;

    // Usar 60 FPS en lugar de vsync para mayor control
    emscripten_set_main_loop(main_loop, 60, 1);

    // IMPORTANTE: Mover emscripten_exit_with_live_runtime() después del set_main_loop
    // para evitar el unwind prematuro
    emscripten_exit_with_live_runtime();

    printf("Main loop started\n");
}

// Nueva función para detener el bucle
void stopMainLoop() {
    if (!isMainLoopRunning) {
        printf("Main loop not running\n");
        return;
    }

    printf("Stopping main loop...\n");
    emscripten_cancel_main_loop();
    isMainLoopRunning = false;
    printf("Main loop stopped\n");
}

// Nueva función para obtener estado
bool isLoopRunning() {
    return isMainLoopRunning;
}

// Nueva función para obtener contador de frames
int getFrameCount() {
    return frameCounter;
}

// Exportar funciones a JavaScript
EMSCRIPTEN_BINDINGS(moonlight_module) {
    function("initializeStreamConfig", &initializeStreamConfig);
    function("startConnection", &startConnection);
    function("startMainLoop", &startMainLoop);
    function("stopMainLoop", &stopMainLoop);
    function("isLoopRunning", &isLoopRunning);
    function("getFrameCount", &getFrameCount);
}