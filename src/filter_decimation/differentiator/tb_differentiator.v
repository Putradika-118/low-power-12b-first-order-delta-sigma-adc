`timescale 1ns / 1ps

module tb_differentiator;

    // 1. Deklarasi Sinyal Testbench
    reg [24:0] in_diff;
    reg        rst;
    reg        clk;
    wire [24:0] out_diff;

    // 2. Instansiasi Unit Under Test (UUT)
    differentiator uut (
        .in_diff(in_diff),
        .rst(rst),
        .clk(clk),
        .out_diff(out_diff)
    );

    // 3. Generator Clock Lambat (f_N = 48 kHz untuk Audio Nyquist Data Rate)
    // Periode Clock = 1 / 48 kHz ≈ 20833.33 ns.
    // Setengah Periode (Half-period) = 10416.66 ns.
    always begin
        #10416.66 clk = ~clk;
    end

    // 4. Skenario Pengujian Sinyal (Stimulus)
    initial begin
        // Kondisi Awal Detik Ke-0
        clk = 0;
        rst = 1;
        in_diff = 25'b0;

        // Pemicuan Asynchronous Reset (Aktif Rendah)
        #1000 rst = 0; // Aktifkan reset
        #5000 rst = 1; // Lepas reset
        
        // Menunggu tepi clock naik agar sinkron
        @(posedge clk);
        
        // --- Skenario 1: Input Konstan (in_diff = 100) ---
        // Karena input konstan, selisihnya harusnya kembali menjadi 0 setelah clock berikutnya
        $display("[INFO] Skenario 1: Memasukkan nilai konstan 100");
        in_diff = 25'd100; // Clock ini: out_diff = 100 - 0 = 100
        @(posedge clk);   
        
        in_diff = 25'd100; // Clock berikutnya: out_diff = 100 - 100 = 0
        repeat(2) @(posedge clk);

        // --- Skenario 2: Input Naik Berundak (Ramp Input) ---
        // Kita ingin melihat out_diff mencatat nilai lompatannya
        $display("[INFO] Skenario 2: Menaikkan nilai berundak");
        in_diff = 25'd150; // out_diff = 150 - 100 = 50
        @(posedge clk);
        
        in_diff = 25'd220; // out_diff = 220 - 150 = 70
        @(posedge clk);
        
        in_diff = 25'd200; // out_diff = 200 - 220 = -20 (Komplemen Dua)
        @(posedge clk);

        // --- Skenario 3: Input Kembali Konstan ---
        in_diff = 25'd200; // out_diff = 200 - 200 = 0
        repeat(2) @(posedge clk);

        // Selesai simulasi
        $display("[INFO] Simulasi differentiator selesai.");
        $finish;
    end

    // 5. Otomasi Dumping Gelombang VCD
    initial begin
        $dumpfile("differentiator_sim.vcd");
        $dumpvars(0, tb_differentiator);
    end

endmodule
