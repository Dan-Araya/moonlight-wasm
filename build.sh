#!/bin/bash
set -e

echo "🧹 Eliminando build anterior..."
rm -rf build

echo "🧠 Cargando entorno de Emscripten..."
source ~/emsdk/emsdk_env.sh

echo "🔧 Configurando CMake con emcmake..."
emcmake cmake -B build -S .

echo "🏗️ Compilando con emmake..."
cd build
emmake make -j$(nproc)

echo "✅ ¡Compilación exitosa!"
echo "🟢 Archivos generados:"
ls -lh moonlight.*
cd ..
