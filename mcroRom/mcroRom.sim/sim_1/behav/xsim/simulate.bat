@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Apr 10 17:02:29 +0530 2024
REM SW Build 2188600 on Wed Apr  4 18:40:38 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim TB_ROM_8_12_behav -key {Behavioral:sim_1:Functional:TB_ROM_8_12} -tclbatch TB_ROM_8_12.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
