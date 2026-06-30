module cascade_diff (
  input wire [24:0] in_cas_diff,
  input wire        rst,
  input wire        clk,
  output wire [24:0] out_cas_diff
);
  // differentiator 1
  wire [24:0] out_diff1;
  differentiator u_diff1 (
    .in_diff(in_cas_diff),
    .rst(rst),
    .clk(clk),
    .out_diff(out_diff1)
  );
  
  // differentiator 2
  wire [24:0] out_diff2;
  differentiator u_diff2 (
    .in_diff(out_diff1),
    .rst(rst),
    .clk(clk),
    .out_diff(out_diff2)
  );

  // differentiator 3
  wire [24:0] out_diff3;
  differentiator u_diff3 (
    .in_diff(out_diff2),
    .rst(rst),
    .clk(clk),
    .out_diff(out_diff3)
  );

  assign out_cas_diff = out_diff3;
endmodule
