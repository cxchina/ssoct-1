  //Example instantiation for system 'DE4_SOPC'
  DE4_SOPC DE4_SOPC_inst
    (
      .ext_clk                         (ext_clk),
      .flash_tristate_bridge_address   (flash_tristate_bridge_address),
      .flash_tristate_bridge_data      (flash_tristate_bridge_data),
      .flash_tristate_bridge_readn     (flash_tristate_bridge_readn),
      .flash_tristate_bridge_writen    (flash_tristate_bridge_writen),
      .in_port_to_the_pb_pio           (in_port_to_the_pb_pio),
      .in_port_to_the_sw_pio           (in_port_to_the_sw_pio),
      .led_an_from_the_tse_mac         (led_an_from_the_tse_mac),
      .led_char_err_from_the_tse_mac   (led_char_err_from_the_tse_mac),
      .led_col_from_the_tse_mac        (led_col_from_the_tse_mac),
      .led_crs_from_the_tse_mac        (led_crs_from_the_tse_mac),
      .led_disp_err_from_the_tse_mac   (led_disp_err_from_the_tse_mac),
      .led_link_from_the_tse_mac       (led_link_from_the_tse_mac),
      .mdc_from_the_tse_mac            (mdc_from_the_tse_mac),
      .mdio_in_to_the_tse_mac          (mdio_in_to_the_tse_mac),
      .mdio_oen_from_the_tse_mac       (mdio_oen_from_the_tse_mac),
      .mdio_out_from_the_tse_mac       (mdio_out_from_the_tse_mac),
      .out_port_from_the_led_pio       (out_port_from_the_led_pio),
      .out_port_from_the_seven_seg_pio (out_port_from_the_seven_seg_pio),
      .pll_peripheral_clk              (pll_peripheral_clk),
      .pll_sys_clk                     (pll_sys_clk),
      .ref_clk_to_the_tse_mac          (ref_clk_to_the_tse_mac),
      .reset_n                         (reset_n),
      .rxp_to_the_tse_mac              (rxp_to_the_tse_mac),
      .select_n_to_the_ext_flash       (select_n_to_the_ext_flash),
      .txp_from_the_tse_mac            (txp_from_the_tse_mac)
    );

