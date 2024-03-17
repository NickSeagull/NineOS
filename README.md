# NineOS

## Setup

- Install Nim and Nimble using `choosenim`
- Install `llvm` using chocolatey
- Add Nim and Nimble to the SYSTEM PATH environment variable
- Install ESP-IDF v4.4 using the Visual Studio Extension.
- Build with `nimble build_project`
- Flash using `idf.py -p <PORT> flash`
- Clone M5GFX, M5Unified, and M5Cardputer into `C:\Espressif\frameworks\esp-idf-v4.4\components`
