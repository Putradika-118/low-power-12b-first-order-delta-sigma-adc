module cascade_int (
  input wire [24:0] in_cas_int,
  input wire        rst,
  input wire        clk,
  output wire [24:0] out_cas_int
);
  // integrator 1
  wire [24:0] out_int1;
  integrator u_int1 (
    .in_int(in_cas_int),
    .rst(rst),
    .clk(clk),
    .out_int(out_int1)
  );
  
  // integrator 2
  wire [24:0] out_int2;
  integrator u_int2 (
    .in_int(out_int1),
    .rst(rst),
    .clk(clk),
    .out_int(out_int2)
  );

  // integrator 3
  wire [24:0] out_int3;
  integrator u_int3 (
    .in_int(out_int2),
    .rst(rst),
    .clk(clk),
    .out_int(out_int3)
  );
  assign out_cas_int = out_int3;
endmodule
