# Package

version       = "0.0.0"
author        = "Nikita Tchayka"
description   = "9"
license       = "Apache-2.0"
srcDir        = "src"

# Dependencies

requires "nim >= 2.0.2"
requires "nesper#devel"

import os, strutils

proc idf(arg: string): string =
  result = "python " & getEnv("IDF_PATH") & "/tools/idf.py " & arg

task build_nim, "Builds the Nim code":
  exec "nim prepare main/main.nim -d:release -d:ESP_IDF_V4_4" #
  exec idf("reconfigure")

task fullclean, "Cleans the entire project":
  if dirExists "main/nimcache":
    rmDir "main/nimcache"
  if dirExists "build":
    rmDir "build"

task build_project, "Builds the entire project":
  fullcleanTask()
  build_nimTask()
  exec idf("build")


# include nesper/build_utils/tasks
