import ./m5gfx

const
    m5Unified_h = "<M5Unified.hpp>"

type
  BoardT* {.importcpp: "m5::board_t", header: m5Unified_h.} = object #
    # board_unknown, board_M5Stack, board_M5Atom, ... # and so on

  PinNameT* {.importcpp: "m5::pin_name_t", header: m5Unified_h.}  = enum in_i2c_scl,
    in_i2c_sda,
    port_a_pin1,
    port_a_scl,  ex_i2c_scl,
    port_a_pin2,   port_a_sda,  ex_i2c_sda,
    port_b_pin1,   port_b_in,
    port_b_pin2,   port_b_out,
    port_c_pin1,   port_c_rxd,
    port_c_pin2,   port_c_txd,
    port_d_pin1,   port_d_rxd,  port_b2_pin1,
    port_d_pin2,   port_d_txd ,  port_b2_pin2 ,
    port_e_pin1,   port_e_rxd ,  port_c2_pin1 ,
    port_e_pin2,   port_e_txd ,  port_c2_pin2 ,
    sd_spi_sclk,
    sd_spi_copi,   sd_spi_mosi ,
    sd_spi_cipo,   sd_spi_miso ,
    sd_spi_cs,     sd_spi_ss  ,
    rgb_led,
    power_hold,
    pin_name_max

  M5UnifiedConfig* {.importcpp: "m5::M5Unified::config_t", header: m5Unified_h.} = object

  M5UnifiedObj* {.importcpp: "m5::M5Unified", header: m5Unified_h.} = object

proc newM5Unified*(): M5UnifiedObj {.constructor, header: m5Unified_h.}
proc config*(): M5UnifiedConfig {.importcpp: "m5::M5Unified::config()", header: m5Unified_h.}

proc begin*(cfg: M5UnifiedConfig) {.importcpp: "M5.begin(@)".}
proc update*() {.importcpp: "M5.update()".}
# Access to embedded objects
proc Display*(): M5GFX {.importcpp: "m5::M5Unified.Display", header: m5Unified_h.}

# External reference to the global M5 object
# var M5*: M5UnifiedObj {.importcpp: "M5", header: m5Unified_h.}
