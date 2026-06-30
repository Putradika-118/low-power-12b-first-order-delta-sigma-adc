`timescale 1ns / 1ps

module tb_integrator;

    // 1. Deklarasi Sinyal Testbench
    reg [24:0] in_int;
    reg        rst;
    reg        clk;
    wire [24:0] out_int;

    // 2. Instansiasi Unit Under Test (UUT)
    integrator uut (
        .in_int(in_int),
        .rst(rst),
        .clk(clk),
        .out_int(out_int)
    );

    // 3. Generator Clock Acuan (fs = 12.288 MHz)
    // Periode Clock = 1 / 12.288 MHz ≈ 81.38 ns. 
    // Maka satukan nilai half-period menjadi 40.69 ns.
    always begin
        #40.69 clk = ~clk;
    end

    // 4. Skenario Pengujian Sinyal (Stimulus)
    initial begin
        // Kondisi Awal
        clk = 0;
        rst = 1;
        in_int = 25'b0;

        // Pemicuan Asynchronous Reset (Aktif Rendah)
        #10 rst = 0; // Aktifkan reset
        #50 rst = 1; // Lepas reset setelah 50ns
        
        // Menunggu sinkronisasi beberapa saat setelah reset selesai
        @(posedge clk);
        
        // --- Skenario 1: Memasukkan angka 1 terus-menerus ---
        // Kita ingin melihat out_int naik perlahan: 0 -> 1 -> 2 -> 3 -> 4...
        $display("[INFO] Memulai Skenario 1: Akumulasi Konstan (+1)");
        in_int = 25'd1; 
        repeat(5) @(posedge clk); // Biarkan berjalan selama 5 siklus clock

        // --- Skenario 2: Memasukkan nilai yang lebih besar ---
        // Kita ingin melihat lompatan nilai akumulasi yang drastis
        $display("[INFO] Memulai Skenario 2: Akumulasi Nilai Besar (+500)");
        in_int = 25'd500;
        repeat(4) @(posedge clk);

        // --- Skenario 3: Memasukkan nilai 0 ---
        // Nilai out_int seharusnya bertahan tetap di posisi terakhir (tidak naik/turun)
        $display("[INFO] Memulai Skenario 3: Menahan Nilai Terakhir (+0)");
        in_int = 25'd0;
        repeat(3) @(posedge clk);

        // Selesai simulasi
        $display("[INFO] Simulasi selesai dengan sukses.");
        $finish;
    end

    // 5. Blok Otomatisasi untuk menghasilkan file VCD (Bisa dibuka di GTKWave)
    initial begin
        $dumpfile("integrator_sim.vcd"); // Nama file output gelombang
        $dumpvars(0, tb_integrator);    // Merekam seluruh tingkat hierarki sirkuit
    end

endmodule
