# Package

version       = "0.0.0"
author        = "Nikita Tchayka"
description   = "9"
license       = "Apache-2.0"
srcDir        = "src"


# Dependencies

requires "nim >= 2.0.2"
requires "nesper >= 0.6.1"

# includes nimble tasks for building Nim esp-idf projects
include nesper/build_utils/tasks