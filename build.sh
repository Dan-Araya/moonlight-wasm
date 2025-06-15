#!/bin/bash
set -e

echo "🧹 Eliminando artefactos de compilaciones anteriores..."
rm -rf build
rm -rf cmake-build-debug

echo "🧠 Cargando entorno de Emscripten..."
source ~/emsdk/emsdk_env.sh

# Mostrar versión de Emscripten para debugging
echo "🔍 Versión de Emscripten:"
emcc --version | head -1

echo "🔧 Configurando CMake con emcmake..."
emcmake cmake -B build -S .

echo "🏗️ Compilando con emmake..."
cd build
emmake make -j$(nproc)

echo "✅ ¡Compilación exitosa!"
echo "🟢 Archivos generados:"
if [ -f moonlight.js ] && [ -f moonlight.wasm ]; then
  ls -lh moonlight.js moonlight.wasm

  echo ""
  echo "🔍 Verificando configuraciones críticas..."

  # Verificar ASYNCIFY
  if grep -q "ASYNCIFY" moonlight.js; then
    asyncify_count=$(grep -o "ASYNCIFY" moonlight.js | wc -l)
    echo "✅ ASYNCIFY detectado - ocurrencias: $asyncify_count"
  else
    echo "❌ ASYNCIFY NO detectado - el bucle principal puede fallar"
  fi

  # Verificar EXIT_RUNTIME
  if grep -q "EXIT_RUNTIME" moonlight.js; then
    echo "✅ EXIT_RUNTIME configurado"
  else
    echo "⚠️  EXIT_RUNTIME no encontrado en el archivo"
  fi

  # Verificar MODULARIZE
  if grep -q "createMoonlightModule" moonlight.js; then
    echo "✅ MODULARIZE + EXPORT_NAME configurado correctamente"
  else
    echo "❌ createMoonlightModule no encontrado - problema con MODULARIZE"
  fi

  # Verificar binding functions
  echo ""
  echo "🔍 Verificando funciones exportadas..."
  if grep -q "initializeStreamConfig" moonlight.js; then
    echo "✅ initializeStreamConfig exportada"
  else
    echo "❌ initializeStreamConfig NO exportada"
  fi

  if grep -q "startConnection" moonlight.js; then
    echo "✅ startConnection exportada"
  else
    echo "❌ startConnection NO exportada"
  fi

  if grep -q "startMainLoop" moonlight.js; then
    echo "✅ startMainLoop exportada"
  else
    echo "❌ startMainLoop NO exportada"
  fi

  # Verificar tamaño del archivo WASM
  wasm_size=$(stat -c%s moonlight.wasm)
  echo ""
  echo "📊 Estadísticas del build:"
  echo "   WASM size: $(numfmt --to=iec $wasm_size)"

  if [ $wasm_size -lt 100000 ]; then
    echo "⚠️  Archivo WASM muy pequeño - posible problema de linking"
  else
    echo "✅ Tamaño de WASM parece correcto"
  fi

else
  echo "❌ Archivos moonlight.js o moonlight.wasm no encontrados."
  exit 1
fi

echo ""
echo "🧽 Limpiando archivos anteriores en moonlight-web/public/wasm/..."
mkdir -p ../../moonlight-web/public/wasm
rm -f ../../moonlight-web/public/wasm/moonlight.{js,wasm}

echo "📦 Copiando archivos generados a ../../moonlight-web/public/wasm/ ..."
cp moonlight.{js,wasm} ../../moonlight-web/public/wasm/

# Verificar que la copia fue exitosa
if [ -f ../../moonlight-web/public/wasm/moonlight.js ] && [ -f ../../moonlight-web/public/wasm/moonlight.wasm ]; then
  echo "✅ Archivos copiados correctamente."
  echo ""
  echo "📊 Archivos finales en moonlight-web/public/wasm/:"
  ls -lh ../../moonlight-web/public/wasm/moonlight.{js,wasm}
else
  echo "❌ Error copiando archivos"
  exit 1
fi

echo ""
echo "🎉 Build completado exitosamente!"
echo "💡 Próximos pasos:"
echo "   1. Inicia tu servidor de desarrollo React"
echo "   2. Abre las DevTools del navegador para ver los logs"
echo "   3. El bucle principal ahora debería mantenerse vivo sin 'unwind'"

cd ..