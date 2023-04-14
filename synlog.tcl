database load {/home/m111/m111064559/synopsys_haps/lab/Final/UC_JPEG_DECODER}
database set_state {root}
catch {view schematic -state c0}
run partition -pcf partition.pcf -out pa0
run pre_partition -tss board.tss -fdc design.fdc -area_est 1 -out pp0
run compile -ucdb top_ucdb -out c0
database set_state {pp0}
run partition -pcf partition.pcf -out pa0
database set_state {pa0}
database set_state {pa0}
run system_route -pcf partition.pcf -fdc design.fdc -optimization_priority multi_hop_path -estimate_timing 1 -out sr0
database set_state {sr0}
run system_generate -fdc design.fdc -path synthesis_files -out sg0
database set_state {sg0}
launch protocompiler -script ./synthesis_files/FB1_uA/FB1_uA_srs.tcl -script ./synthesis_files/FB1_uB/FB1_uB_srs.tcl
launch vivado -script ./synthesis_files/FB1_uA/vivado_srs/run_vivado_haps.tcl -script ./synthesis_files/FB1_uB/vivado_srs/run_vivado_haps.tcl
export runtime -path UC_JPEG_DECODER_runtime
database close
database load {/home/m111/m111064559/synopsys_haps/lab/Final/synthesis_files/FB1_uB/FB1_uB_srs}
database set_state {m0}
