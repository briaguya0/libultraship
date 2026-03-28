# libultraship
libultraship (LUS) is a library meant to provide reimplementations of libultra (n64 sdk) functions that run on modern hardware.

LUS uses an asset loading system where data is stored separately from the executable in an archive file ending in `.otr` or `.o2r`. `.otr` files are [`.mpq`](http://www.zezula.net/en/mpq/main.html) compatible files. `.o2r` files are `.zip` compatible files. This separation of data from executable follows modern design practices which are more mod friendly. All one needs to do is supply a patch `.otr` or `.o2r` and the system will automatically replace the data.

## Contributing
LUS accepts any and all contributions. You can interact with the project via PRs, issues, email (kenixwhisperwind@gmail.com), or [Discord](https://discord.gg/shipofharkinian).
Please see [CONTRIBUTING.md](https://github.com/Kenix3/libultraship/blob/main/CONTRIBUTING.md) file for more information.

## Versioning
We use semantic versioning. We have defined the API as: every C linkage function, variable, struct, class, public class method, or enum included from libultraship.h.

## Building on Linux/Mac
```
cmake -H. -Bbuild
cmake --build build
```

## Generating a Visual Studio `.sln` on Windows
```
# Visual Studio 2022
& 'C:\Program Files\CMake\bin\cmake' -DUSE_AUTO_VCPKG=true -S . -B "build/x64" -G "Visual Studio 17 2022" -T v142 -A x64
# Visual Studio 2019
& 'C:\Program Files\CMake\bin\cmake' -DUSE_AUTO_VCPKG=true -S . -B "build/x64" -G "Visual Studio 16 2019" -T v142 -A x64
```

## To build on Windows
```
& 'C:\Program Files\CMake\bin\cmake' --build .\build\x64
```

## Sponsors
Thank you to JetBrains for providing their IDE [CLion](https://www.jetbrains.com/clion/) to me for free!

## License
LUS is licensed under the [MIT](https://github.com/Kenix3/libultraship/blob/main/LICENSE) license.

## Third Party Libraries and Resources

### Core

| Library | Description | License |
|---------|-------------|---------|
| **Fast3D** | Render display lists | [MIT](https://github.com/Kenix3/libultraship/blob/main/src/fast/LICENSE.txt) |
| **prism-processor** | Shader preprocessor | [MIT](https://github.com/KiritoDv/prism-processor/blob/main/LICENSE) |
| **ImGui** | UI | [MIT](https://github.com/ocornut/imgui/blob/master/LICENSE.txt) |
| **StrHash64** | CRC64 implementation | [MIT, zlib, BSD-3-Clause](https://github.com/Kenix3/libultraship/blob/main/src/ship/utils/StrHash64.cpp) |
| **nlohmann-json** | JSON parsing and saving | [MIT](https://github.com/nlohmann/json/blob/develop/LICENSE.MIT) |
| **spdlog** | Logging | [MIT](https://github.com/gabime/spdlog/blob/v1.x/LICENSE) |
| **stb** | Image conversion | [MIT](https://github.com/nothings/stb/blob/master/LICENSE) |
| **thread-pool** | Thread pool for the resource manager | [MIT](https://github.com/bshoshany/thread-pool/blob/master/LICENSE.txt) |
| **tinyxml2** | XML parsing for resource loaders | [zlib](https://github.com/leethomason/tinyxml2/blob/master/LICENSE.txt) |
| **zlib** | Compression | [zlib](https://github.com/madler/zlib/blob/develop/LICENSE) |
| **bzip2** | Compression | [bzip2](https://github.com/libarchive/bzip2?tab=License-1-ov-file#readme) |
| **sdl2** | Window management, controllers, and audio | [zlib](https://github.com/libsdl-org/SDL/blob/main/LICENSE.txt) |
| **glob_match** | Glob pattern matching | [Dual MIT/GPL](https://github.com/torvalds/linux/blob/d1bd5fa07667fcc3e38996ec42aef98761f23039/lib/glob.c) |
| **libzip** | Create and read `.zip` compatible archives | [BSD-3-Clause](https://github.com/nih-at/libzip/blob/main/LICENSE) |

### Optional

| Library | Description | License | Flag |
|---------|-------------|---------|------|
| **StormLib** | Create and read `.mpq` compatible archive files | [MIT](https://github.com/ladislav-zezula/StormLib/blob/master/LICENSE) | `-DINCLUDE_MPQ_SUPPORT=ON` |
| **libgfxd** | Display list disassembler | [MIT](https://github.com/glankk/libgfxd/blob/master/LICENSE) | `-DGFX_DEBUG_DISASSEMBLER=ON` |

### Platform Specific

| Library | Description | License | Platform(s) |
|---------|-------------|---------|-------------|
| **metal-cpp** | Apple Metal rendering backend | [Apache 2.0](https://github.com/bkaradzic/metal-cpp/blob/metal-cpp_26/LICENSE.txt) | macOS, iOS |
| **glew** | OpenGL extension loading | [modified BSD-3-Clause and MIT](https://github.com/nigels-com/glew/blob/master/LICENSE.txt) | macOS, Windows |

### Testing (`-DLUS_BUILD_TESTS=ON`)

| Library | Description | License |
|---------|-------------|---------|
| **GoogleTest** | Unit testing framework | [BSD-3-Clause](https://github.com/google/googletest/blob/main/LICENSE) |
