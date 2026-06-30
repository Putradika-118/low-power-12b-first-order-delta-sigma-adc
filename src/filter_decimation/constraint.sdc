# ====================================================================
# 1. DEFINISI UNIT WAKTU & ARUS (gf180mcu standard)
# ====================================================================
# Memastikan OpenROAD membaca batasan dalam satuan Nanodetik (ns)
set_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm

# ====================================================================
# 2. DEFINISI CLOCK UTAMA (12.288 MHz)
# ====================================================================
# Periode: 1 / 12.288 MHz = 81.38 ns
# Waveform {0 40.69} mengatur agar Duty Cycle tepat 50% (setengah periode awal 0, setengah akhir 1)
create_clock -name clk -period 81.38 -waveform {0 40.69} [get_ports clk]

# ====================================================================
# 3. DEFINISI GENERATED CLOCK (Trik Teraman: Berbasis Master Port)
# ====================================================================
# Kita langsung mengaitkan clock baru ini ke PORT fisik luar top module 'clk'.
# Karena pembagiannya genap simetris 256, kita definisikan transisinya lewat -edges.
# -edges {1 257 513} artinya: 
#   * Tepi naik clk_div terjadi di ketukan clk ke-1
#   * Tepi jatuh clk_div terjadi di ketukan clk ke-257 (setelah 256 setengah periode)
#   * Tepi naik berikutnya terjadi di ketukan clk ke-513 (satu periode penuh = 512 ketukan master)
create_generated_clock -name clk_div \
    -source [get_ports clk] \
    -edges {1 257 513} \
    [get_ports clk]

# ====================================================================
# 4. KETIDAKPASTIAN CLOCK (Clock Uncertainty / Jitter)
# ====================================================================
# Memberikan toleransi margin sebesar 0.25 ns untuk mengantisipasi ketidakstabilan 
# kristal clock luar maupun efek panas pada jalur kabel tembaga silikon
set_clock_uncertainty 0.25 [get_clocks clk]
set_clock_uncertainty 0.25 [get_clocks clk_div]

# ====================================================================
# 5. BATASAN PIN INPUT / OUTPUT (I/O Constraints)
# ====================================================================
# Mengatur agar pin input data rate tinggi (in_cic) sinkron dengan clock utama
set_input_delay -clock clk 10.0 [get_ports in_cic]
set_input_delay -clock clk 10.0 [get_ports rst]

# Mengatur agar bus data output 12-bit sinkron dengan clock lambat hasil desimasi
set_output_delay -clock clk_div 20.0 [get_ports out_cic[*]]

# ====================================================================
# 6. KARAKTERISTIK ELEKTRIK PABRIK (gf180mcu Load & Driving)
# ====================================================================
# Membatasi nilai kapasitansi maksimum beban pin output agar tidak terlalu berat
set_load 0.035 [all_outputs]
