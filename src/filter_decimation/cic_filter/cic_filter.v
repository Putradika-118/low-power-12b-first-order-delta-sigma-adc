module cic_filter (
  input wire in_cic,
  input wire rst,
  input wire clk,
  output wire [11:0] out_cic
);
  wire [24:0] out1to25;
  assign out1to25 = {24'b0, in_cic};

  // Cascade Integrator
  wire [24:0] out_cas_int;
  cascade_int u_cas_int (
    .in_cas_int(out1to25),
    .rst(rst),
    .clk(clk),
    .out_cas_int(out_cas_int)
  );
  
  // Clock Divider
  wire clk_div;
  clock_div u_clock_div (
    .in_clk(clk),
    .rst(rst),
    .out_clk(clk_div)
  );

  // Cascade Differentiator
  wire [24:0] out_cas_diff;
  cascade_diff u_cas_diff (
    .in_cas_diff(out_cas_int),
    .rst(rst),
    .clk(clk_div),
    .out_cas_diff(out_cas_diff)
  );

  assign out_cic = out_cas_diff[24:13];
endmodule
