# Install script for directory: /home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dan/emsdk/upstream/emscripten/cache/sysroot")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/aes.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/aesni.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/arc4.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/aria.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/asn1.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/asn1write.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/base64.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/bignum.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/blowfish.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/bn_mul.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/camellia.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ccm.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/certs.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/chacha20.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/chachapoly.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/check_config.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/cipher.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/cipher_internal.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/cmac.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/compat-1.3.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/config.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/config_psa.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/constant_time.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/debug.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/des.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/dhm.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ecdh.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ecdsa.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ecjpake.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ecp.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ecp_internal.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/entropy.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/entropy_poll.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/error.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/gcm.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/havege.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/hkdf.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/md.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/md2.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/md4.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/md5.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/md_internal.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/net.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/net_sockets.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/nist_kw.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/oid.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/padlock.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/pem.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/pk.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/pk_internal.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/pkcs11.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/pkcs12.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/pkcs5.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/platform.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/platform_time.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/platform_util.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/poly1305.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/psa_util.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ripemd160.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/rsa.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/rsa_internal.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/sha1.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/sha256.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/sha512.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ssl.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ssl_internal.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/threading.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/timing.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/version.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/x509.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/x509_crl.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/x509_crt.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/x509_csr.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_compat.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_config.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_driver_common.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_extra.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_platform.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_se_driver.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_sizes.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_struct.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_types.h"
    "/home/dan/Escritorio/Aspha/code/moonlight-wasm/moonlight-common-c/external/mbedtls/include/psa/crypto_values.h"
    )
endif()

