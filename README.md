## 🎮 Moonlight WebAssembly (WASM)

Este proyecto compila el core de `moonlight-common-c` a WebAssembly usando Emscripten, permitiendo ejecutar Moonlight directamente en el navegador.

### ✅ Estado Actual
- ✔️ Compilación exitosa con Emscripten
- ✔️ Binding vía `bindings.cpp`
- ✔️ Generación de archivos:
  - `moonlight.js` (~97 KB)
  - `moonlight.wasm` (~36 KB)

### 🛠️ Pasos Clave
1. Clonar con submódulos: `git clone --recursive`
2. Usar `emcmake` + `emmake` con `CMake`
3. Incluir correctamente los headers de `mbedtls`, especialmente `check_config.h`
4. Configurar `CMakeLists.txt` con:
   ```cmake
   include_directories(${MOONLIGHT_SRC_DIR}/external/mbedtls/library/mbedtls)```
5. Compilar: ```./build.sh```

### 💡 Notas
Para agregar nuevas funciones expuestas a JS: modificar ```bindings.cpp```, recompilar.


### Diferencias con un empaquetado de producción (Pendientes)

| Aspecto                 | Estado actual            | Producción ideal             |
|-------------------------|--------------------------|------------------------------|
| Minificación JS         | ❌ No                    | ✅ Sí (`terser`, `webpack`)  |
| Optimización WASM       | ⚠️ Parcial               | ✅ `-O3`, `--closure 1`       |
| Split dinámico de código| ❌                      | ✅ Carga perezosa si aplica  |
| Source maps             | ❌                      | ✅ Para debugging limpio      |
| Tests                   | ❌                      | ✅ (unitarios e integración)  |
