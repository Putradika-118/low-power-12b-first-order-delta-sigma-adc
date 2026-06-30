module clock_div (
  input wire in_clk,
  input wire rst,
  output wire out_clk
);
  reg [7:0] counter;
  assign out_clk = ~counter[7];
  always @(posedge in_clk or negedge rst) begin
    if (!rst) begin
      counter <= 8'b0;
    end else begin
      counter <= counter + 1'b1;
    end
  end
endmodule
