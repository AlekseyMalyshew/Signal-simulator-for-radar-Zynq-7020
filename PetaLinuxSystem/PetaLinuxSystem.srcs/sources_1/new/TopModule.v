//www.hellofpga.com
`timescale 1ns / 1ps
module TopModule(
    inout [3:0]GPIO_EMIO,
    
    output MDIO_PHY_mdc,
    inout  MDIO_PHY_mdio_io,
    input  [3:0]RGMII_rd,
    input  RGMII_rx_ctl,
    input  RGMII_rxc,
    output [3:0]RGMII_td,
    output RGMII_tx_ctl,
    output RGMII_txc,
    
    input UART_rxd,
    output UART_txd
);


 ZYNQ_CORE_wrapper zynq_u(
    .GPIO_0_0_tri_io(GPIO_EMIO),

    .MDIO_PHY_0_mdc(MDIO_PHY_mdc),
    .MDIO_PHY_0_mdio_io(MDIO_PHY_mdio_io),
    .RGMII_0_rd(RGMII_rd),
    .RGMII_0_rx_ctl(RGMII_rx_ctl),
    .RGMII_0_rxc(RGMII_rxc),
    .RGMII_0_td(RGMII_td),
    .RGMII_0_tx_ctl(RGMII_tx_ctl),
    .RGMII_0_txc(RGMII_txc),
  
    .UART_0_0_rxd(UART_rxd),
    .UART_0_0_txd(UART_txd)
 );
    
endmodule
