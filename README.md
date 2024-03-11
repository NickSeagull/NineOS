# NineOS

## Setup

- Install ESP-IDF v4.4.
- ⚠️ Use **THE CMD FROM ESP-IDF** and not Powershell/WSL2 ⚠️
- Clone this repo with its submodules recursively: `git clone --recursive <URL TO THIS REPO>`
- Install Nim and Nimble
- Build with `nimble esp_compile` and then `idf.py reconfigure; idf.py build`