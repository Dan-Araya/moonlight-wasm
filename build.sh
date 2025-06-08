#!/bin/bash
set -e

echo "🧹 Eliminando artefactos de compilaciones anteriores..."
rm -rf build
rm -rf cmake-build-debug

echo "🧠 Cargando entorno de Emscripten..."
source ~/emsdk/emsdk_env.sh

echo "🔧 Configurando CMake con emcmake..."
emcmake cmake -B build -S .

echo "🏗️ Compilando con emmake..."
cd build
emmake make -j$(nproc)

echo "✅ ¡Compilación exitosa!"
echo "🟢 Archivos generados:"
if [ -f moonlight.js ] && [ -f moonlight.wasm ]; then
  ls -lh moonlight.js moonlight.wasm
else
  echo "⚠️ Archivos moonlight.js o moonlight.wasm no encontrados."
fi

cd ..
