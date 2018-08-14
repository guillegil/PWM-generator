onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+clock_and_adc -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clock_and_adc xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clock_and_adc.udo}

run -all

endsim

quit -force
