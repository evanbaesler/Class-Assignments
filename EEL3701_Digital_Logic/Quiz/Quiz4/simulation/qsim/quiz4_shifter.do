onerror {exit -code 1}
vlib work
vlog -work work quiz4_shifter.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L fiftyfivenm_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.quiz4_shifter_vlg_vec_tst
vcd file -direction quiz4_shifter.msim.vcd
vcd add -internal quiz4_shifter_vlg_vec_tst/*
vcd add -internal quiz4_shifter_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
