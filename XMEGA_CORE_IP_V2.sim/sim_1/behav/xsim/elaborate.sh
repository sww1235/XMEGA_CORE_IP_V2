#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.3 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Nov 03 03:06:24 EET 2017
# SW Build 2018833 on Wed Oct  4 19:58:07 MDT 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 3825920b97b64aedb7bd68e47d88b5f9 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot top_uc_behav xil_defaultlib.top_uc xil_defaultlib.glbl -log elaborate.log