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
  exit 1
fi

echo "🧽 Limpiando archivos anteriores en moonlight-web/public/wasm/..."
mkdir -p ../../moonlight-web/public/wasm
rm -f ../../moonlight-web/public/wasm/moonlight.{js,wasm}

echo "📦 Copiando archivos generados a ../../moonlight-web/public/wasm/ ..."
cp moonlight.{js,wasm} ../../moonlight-web/public/wasm/

echo "✅ Archivos copiados correctamente."
cd ..
