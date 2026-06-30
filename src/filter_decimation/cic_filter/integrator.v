module integrator (
  input wire [24:0] in_int,
  input wire        rst,
  input wire        clk,
  output reg [24:0] out_int
);
  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      out_int <= 25'b0;
    end else begin
      out_int <= out_int + in_int;
    end
  end
endmodule
