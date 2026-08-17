# ==============================================================================
# Synopsys Design Constraints (SDC) for andig_clock
# Target Process: GlobalFoundries 180nm MCU (GF180MCU)
# Master Clock Frequency: 73.728 MHz (Period: ~13.563 ns)
# ==============================================================================

# Set unit standar kelistrikan dan waktu
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA

# 1. Definisi Master Clock (in_clk = 73.728 MHz -> T = 13.563 ns)
create_clock -name in_clk -period 13.563 [get_ports in_clk]
set_clock_uncertainty 0.20 [get_clocks in_clk]
set_clock_transition 0.15 [get_clocks in_clk]

# 2. Batasan Sinyal Input Reset Asinkron (rst)
set_input_delay -clock in_clk -max 2.0 [get_ports rst]
set_input_delay -clock in_clk -min 0.5 [get_ports rst]
set_drive 0.5 [get_ports {in_clk rst}]

# 3. Batasan Output Sinyal Clock
# (out_clk1, out_clk2, out_clk2B, out_clk_cic)
set_output_delay -clock in_clk -max 2.5 [get_ports {out_clk1 out_clk2 out_clk2B out_clk_cic}]
set_output_delay -clock in_clk -min 0.5 [get_ports {out_clk1 out_clk2 out_clk2B out_clk_cic}]

# 4. Beban Kapasitansi Pin Output (Standar GF180MCU IO Buffer)
set_load 0.035 [get_ports {out_clk1 out_clk2 out_clk2B out_clk_cic}]
