`timescale 1ns / 1ps

module tb_clock_div;

    // 1. Deklarasi Sinyal Testbench
    reg  in_clk;
    reg  rst;
    wire out_clk;

    // 2. Instansiasi Unit Under Test (UUT)
    clock_div uut (
        .in_clk(in_clk),
        .rst(rst),
        .out_clk(out_clk)
    );

    // 3. Generator Clock Cepat (fs = 12.288 MHz)
    // Periode penuh ≈ 81.38 ns, Setengah periode = 40.69 ns
    always begin
        #40.69 in_clk = ~in_clk;
    end

    // 4. Stimulus Skenario Pengujian
    initial begin
        // Kondisi Awal Detik Ke-0
        in_clk = 0;
        rst = 1;

        // Picu Asynchronous Reset Aktif Rendah
        #10  rst = 0; 
        #50  rst = 1; // Lepas reset
        
        // Membiarkan simulasi berjalan cukup lama agar counter melewati 256 siklus
        // Kita butuh setidaknya melihat minimal 2 pulsa output (256 * 2 * 81.38 ns ≈ 41666 ns)
        #45000;

        $display("[INFO] Simulasi pembagi clock selesai.");
        $finish;
    end

    // 5. Otomasi Pembuatan File VCD Gelombang
    initial begin
        $dumpfile("clock_div_sim.vcd");
        $dumpvars(0, tb_clock_div);
    end

endmodule
