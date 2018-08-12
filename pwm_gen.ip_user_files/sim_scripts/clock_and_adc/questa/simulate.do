onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clock_and_adc_opt

do {wave.do}

view wave
view structure
view signals

do {clock_and_adc.udo}

run -all

quit -force
