module differentiator (
  input wire [24:0] in_diff,
  input wire        rst,
  input wire        clk,
  output reg [24:0] out_diff
);
  reg [24:0] in_min1;
  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      in_min1 <= 25'b0;
      out_diff <= 25'b0;
    end else begin
      in_min1 <= in_diff;
      out_diff <= in_diff - in_min1;
    end
  end
endmodule
