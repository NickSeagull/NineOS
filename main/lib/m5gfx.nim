const m5Gfx_h = "<M5GFX.hpp>"
type
  M5GFXObj* {.importcpp: "m5gfx::M5GFX", header: m5Gfx_h .} = object

  M5GFX* = ptr M5GFXObj

proc height*(this: M5GFX): cint {.importcpp: "#->height()", header: m5Gfx_h .}

proc setTextSize*(this: M5GFX, size: cint) {.importcpp: "#->setTextSize($1)", header: m5Gfx_h .}

proc printf*(this: M5GFX, fmt: cstring) {.importcpp: "#->printf(@)", header: m5Gfx_h .}