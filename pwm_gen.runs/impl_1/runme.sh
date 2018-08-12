#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/guille/programas/VivadoLinux/SDK/2018.1/bin:/media/guille/programas/VivadoLinux/Vivado/2018.1/ids_lite/ISE/bin/lin64:/media/guille/programas/VivadoLinux/Vivado/2018.1/bin
else
  PATH=/media/guille/programas/VivadoLinux/SDK/2018.1/bin:/media/guille/programas/VivadoLinux/Vivado/2018.1/ids_lite/ISE/bin/lin64:/media/guille/programas/VivadoLinux/Vivado/2018.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/media/guille/programas/VivadoLinux/Vivado/2018.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/media/guille/programas/VivadoLinux/Vivado/2018.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/guille/Documentos/VivadoProj/pwm_gen/pwm_gen.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log square_wave.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source square_wave.tcl -notrace


