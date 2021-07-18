onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Data_memory_opt

do {wave.do}

view wave
view structure
view signals

do {Data_memory.udo}

run -all

quit -force
