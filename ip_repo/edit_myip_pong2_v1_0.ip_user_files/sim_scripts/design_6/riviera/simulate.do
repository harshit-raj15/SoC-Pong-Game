transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_6  -L xil_defaultlib -L xpm -L util_vector_logic_v2_0_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_6 xil_defaultlib.glbl

do {design_6.udo}

run 1000ns

endsim

quit -force
