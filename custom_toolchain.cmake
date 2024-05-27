
# Custom Toolchain File Created By Somnath Dutta Banik for CrossCompilation using TempusSDKs 09-Nov-2023 .
# Do not use /opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/usr/share/cmake/OEToolchainConfig.cmake 
# otherwise it will break the CrossCompile Feature. 
#
# Must be used with a Custom [cmake_kit_file].json 
# Example cross compile kit file would be 
# [
#	  {
#	    "name": "CrossCompile_TempusSDK",
#	    "toolchainFile": "/home/somnath/CMAKE_Cache/custom_toolchain.cmake",
#	    "isTrusted": true
#	  }
#	]
#


set( CMAKE_SYSTEM_NAME Linux )

set(ENV{SDKTARGETSYSROOT} "/opt/fsl-imx-x11/5.4-zeus/sysroots/cortexa9hf-neon-poky-linux-gnueabi")
set(ENV{PATH} "/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/bin:/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/sbin:/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/usr/bin/../x86_64-pokysdk-linux/bin:/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi:/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-musl:$ENV{PATH}")
set(ENV{PKG_CONFIG_SYSROOT_DIR} "$ENV{SDKTARGETSYSROOT}")
set(ENV{PKG_CONFIG_PATH} "$ENV{SDKTARGETSYSROOT}/usr/lib/pkgconfig:$ENV{SDKTARGETSYSROOT}/usr/share/pkgconfig")
set(ENV{CONFIG_SITE} "/opt/fsl-imx-x11/5.4-zeus/site-config-cortexa9hf-neon-poky-linux-gnueabi")
set(ENV{OECORE_NATIVE_SYSROOT} "/opt/fsl-imx-x11/5.4-zeus/sysroots/x86_64-pokysdk-linux")
set(ENV{OECORE_TARGET_SYSROOT} "$ENV{SDKTARGETSYSROOT}")
set(ENV{OECORE_ACLOCAL_OPTS} "-I $ENV{OECORE_NATIVE_SYSROOT}/usr/share/aclocal")
set(ENV{OECORE_BASELIB} "lib")
set(ENV{OECORE_TARGET_ARCH} "arm")
set(ENV{OECORE_TARGET_OS} "linux-gnueabi")
set(ENV{CC} "arm-poky-linux-gnueabi-gcc  -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fno-optimize-sibling-calls --sysroot=$ENV{SDKTARGETSYSROOT}")
set(ENV{CXX} "arm-poky-linux-gnueabi-g++  -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fno-optimize-sibling-calls --sysroot=$ENV{SDKTARGETSYSROOT}")
set(ENV{CPP} "arm-poky-linux-gnueabi-gcc -E  -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fno-optimize-sibling-calls --sysroot=$ENV{SDKTARGETSYSROOT}")
set(ENV{AS} "arm-poky-linux-gnueabi-as")
set(ENV{LD} "arm-poky-linux-gnueabi-ld  --sysroot=$ENV{SDKTARGETSYSROOT}")
set(ENV{GDB} "arm-poky-linux-gnueabi-gdb")
set(ENV{STRIP} "arm-poky-linux-gnueabi-strip")
set(ENV{RANLIB} "arm-poky-linux-gnueabi-ranlib")
set(ENV{OBJCOPY} "arm-poky-linux-gnueabi-objcopy")
set(ENV{OBJDUMP} "arm-poky-linux-gnueabi-objdump")
set(ENV{READELF} "arm-poky-linux-gnueabi-readelf")
set(ENV{AR} "arm-poky-linux-gnueabi-ar")
set(ENV{NM} "arm-poky-linux-gnueabi-nm")
set(ENV{M4} "m4")
set(ENV{TARGET_PREFIX} "arm-poky-linux-gnueabi-")
set(ENV{CONFIGURE_FLAGS} "--target=arm-poky-linux-gnueabi --host=arm-poky-linux-gnueabi --build=x86_64-linux --with-libtool-sysroot=$ENV{SDKTARGETSYSROOT}")
set(ENV{CFLAGS} " -O2 -pipe -g -feliminate-unused-debug-types ")
set(ENV{CXXFLAGS} " -O2 -pipe -g -feliminate-unused-debug-types ")
set(ENV{LDFLAGS} "-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed")
set(ENV{CPPFLAGS} "")
set(ENV{KCFLAGS} "--sysroot=$ENV{SDKTARGETSYSROOT}")
set(ENV{OECORE_DISTRO_VERSION} "5.4-zeus")
set(ENV{OECORE_SDK_VERSION} "5.4-zeus")
set(ENV{ARCH} "arm")
set(ENV{CROSS_COMPILE} "arm-poky-linux-gnueabi-")

#change added for QT5	16-DEC-2023
# Add the toolchain bin directory to the PATH
set(PATH "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin" CACHE INTERNAL "Path to toolchain binaries")
set(PATH "${PATH};$ENV{PATH}")
set(ENV{PATH} "${PATH}")
# Set other variables
set(OE_QMAKE_CFLAGS "$ENV{CFLAGS}")
set(OE_QMAKE_CXXFLAGS "$ENV{CXXFLAGS}")
set(OE_QMAKE_LDFLAGS "$ENV{LDFLAGS}")
set(OE_QMAKE_CC "$ENV{CC}")
set(OE_QMAKE_CXX "$ENV{CXX}")
set(OE_QMAKE_LINK "$ENV{CXX}")
set(OE_QMAKE_AR "$ENV{AR}")
set(OE_QMAKE_STRIP "$ENV{STRIP}")
set(QT_CONF_PATH "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/qt.conf")
set(OE_QMAKE_LIBDIR_QT "$ENV{OE_QMAKE_LIBDIR_QT}")
set(OE_QMAKE_INCDIR_QT "$ENV{OE_QMAKE_INCDIR_QT}")
set(OE_QMAKE_MOC "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/moc")
set(OE_QMAKE_UIC "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/uic")
set(OE_QMAKE_RCC "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/rcc")
set(OE_QMAKE_QDBUSCPP2XML "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/qdbuscpp2xml")
set(OE_QMAKE_QDBUSXML2CPP "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin/qdbusxml2cpp")
set(OE_QMAKE_QT_CONFIG "$ENV{OE_QMAKE_QT_CONFIG}")
set(OE_QMAKE_PATH_HOST_BINS "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin")	
set(OE_QMAKE_PATH_EXTERNAL_HOST_BINS "$ENV{OECORE_NATIVE_SYSROOT}/usr/bin")
set(QMAKESPEC "$ENV{QT_INSTALL_LIBS}/mkspecs/linux-oe-g++")

# Set OPENSSL_CONF variable
set(OPENSSL_CONF "$ENV{OECORE_NATIVE_SYSROOT}/usr/lib/ssl-1.1/openssl.cnf" CACHE INTERNAL "Path to OpenSSL configuration file")


#end change for QT5	16-DEC-2023


set( CMAKE_C_FLAGS $ENV{CFLAGS} CACHE STRING "" FORCE )
set( CMAKE_CXX_FLAGS $ENV{CXXFLAGS}  CACHE STRING "" FORCE )
set( CMAKE_ASM_FLAGS ${CMAKE_C_FLAGS} CACHE STRING "" FORCE )
set( CMAKE_LDFLAGS_FLAGS ${CMAKE_CXX_FLAGS} CACHE STRING "" FORCE )
set( CMAKE_SYSROOT $ENV{OECORE_TARGET_SYSROOT} )

set( CMAKE_FIND_ROOT_PATH $ENV{OECORE_TARGET_SYSROOT} )
set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )

set(CMAKE_FIND_LIBRARY_CUSTOM_LIB_SUFFIX "$ENV{OE_CMAKE_FIND_LIBRARY_CUSTOM_LIB_SUFFIX}")

# Set CMAKE_SYSTEM_PROCESSOR from the sysroot name (assuming processor-distro-os).
if ($ENV{SDKTARGETSYSROOT} MATCHES "/sysroots/([a-zA-Z0-9_-]+)-.+-.+")
  set(CMAKE_SYSTEM_PROCESSOR ${CMAKE_MATCH_1})
endif()

# Include the toolchain configuration subscripts
file( GLOB toolchain_config_files "${CMAKE_TOOLCHAIN_FILE}.d/*.cmake" )
foreach(config ${toolchain_config_files})
    include(${config})
endforeach()
