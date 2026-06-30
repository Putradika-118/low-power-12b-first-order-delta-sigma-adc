`timescale 1ns / 1ps

module tb_cic_filter;

    // 1. Deklarasi Sinyal Simulasi
    reg         in_cic;
    reg         rst;
    reg         clk;
    wire [11:0] out_cic;

    // 2. Instansiasi Unit Under Test (UUT)
    cic_filter uut (
        .in_cic  (in_cic),
        .rst     (rst),
        .clk     (clk),
        .out_cic (out_cic)
    );

    // 3. Generator Clock Cepat Utama (fs = 12.288 MHz)
    always begin
        #40.69 clk = ~clk;
    end

    // Variabel pembantu loop pengujian
    integer i;
    integer c; // Untuk menghitung siklus desimasi

    // 4. Stimulus Skenario Pengujian
    initial begin
        clk = 0; rst = 0; in_cic = 0;
        #200; rst = 1; 
        @(negedge clk);

        // ===================================================================
        // SKENARIO 1: DC 0 Volt (Biarkan filter kosong)
        // ===================================================================
        $display("\n[INFO] Skenario 1: Input Modulator Konstan 0");
        in_cic = 1'b0;
        repeat (4 * 256) @(negedge clk);
        $display("[HASIL] Skenario 1 - out_cic: %d", out_cic);

        // ===================================================================
        // SKENARIO 2: DC Skala Penuh (Konstan 1)
        // ===================================================================
        $display("\n[INFO] Skenario 2: Input Modulator Konstan 1");
        for (i = 0; i < (6 * 256); i = i + 1) begin
            in_cic = 1'b1;
            @(negedge clk);
        end
        $display("[HASIL] Skenario 2 - out_cic: %d", out_cic);

        // ===================================================================
        // SKENARIO 3: Aliran Sinyal PDM Acak
        // ===================================================================
        $display("\n[INFO] Skenario 3: Aliran Sinyal PDM Acak");
        repeat (6 * 256) begin
            in_cic = $random % 2;
            @(negedge clk);
        end
        $display("[HASIL] Skenario 3 - out_cic terakhir: %d", out_cic);

        // ===================================================================
        // SKENARIO 4: Uji Respons Waktu Stabil (Step Response)
        // 3 Siklus Desimasi angka 0, lalu 3 Siklus Desimasi angka 1
        // ===================================================================
        $display("\n[INFO] Skenario 4: Uji Waktu Stabil (3 siklus 0, 3 siklus 1)");
        
        // Fase A: Masukkan 0 selama 3 siklus desimasi
        $display("--- Fase A: Menyuapi logika 0 ---");
        for (c = 1; c <= 3; c = c + 1) begin
            for (i = 0; i < 256; i = i + 1) begin
                in_cic = 1'b0;
                @(negedge clk);
            end
            // Cetak nilai persis setelah 1 siklus desimasi berlalu
            $display("Akhir siklus ke-%d (Input 0), out_cic merosot jadi : %d", c, out_cic);
        end

        // Fase B: Masukkan 1 selama 3 siklus desimasi
        $display("--- Fase B: Menyuapi logika 1 ---");
        for (c = 1; c <= 3; c = c + 1) begin
            for (i = 0; i < 256; i = i + 1) begin
                in_cic = 1'b1;
                @(negedge clk);
            end
            // Cetak nilai persis setelah 1 siklus desimasi berlalu
            $display("Akhir siklus ke-%d (Input 1), out_cic merangkak jadi: %d", c, out_cic);
        end

        // Selesai Pengujian
        $display("\n[INFO] Seluruh tahapan verifikasi selesai.");
        $finish;
    end

    // 5. Otomasi Dumping Gelombang ke Berkas VCD
    initial begin
        $dumpfile("cic_filter_sim.vcd");
        $dumpvars(0, tb_cic_filter);
    end

endmodule
