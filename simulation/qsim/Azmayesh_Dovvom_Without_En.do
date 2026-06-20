onerror {quit -f}
vlib work
vlog -work work Azmayesh_Dovvom_Without_En.vo
vlog -work work Azmayesh_Dovvom_Without_En.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Azmayesh_Dovvom_Without_En_vlg_vec_tst
vcd file -direction Azmayesh_Dovvom_Without_En.msim.vcd
vcd add -internal Azmayesh_Dovvom_Without_En_vlg_vec_tst/*
vcd add -internal Azmayesh_Dovvom_Without_En_vlg_vec_tst/i1/*
add wave /*
run -all
