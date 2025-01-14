close all
clear
% clc

addpath(genpath('D:\Dropbox\MATLAB\Now_Working\Quasi\KAIST_ESCA_Q_v1.0'))

% Generalized CCD - 20170619 ~
% Single IHX cases
% Cooler / TIT : T bounded
% Main compressor : P bounded

PGSFR_TSD_condition
PGSFR_TSD_layout
PGSFR_TSD_machine_property

% System Boundary Condition
Condition.delt = 1e-4;

Condition.T_bound.ID = [8, 1];
Condition.T_bound.value = [31.3 + 273.15, 505 + 273.15];
Condition.P_bound.ID = 9;
Condition.P_bound.value = 20000;



[Junc, info] = Steady_Solver(Condition, Component, Mechanics);
Output_Result_info(Condition, Junc, Component, info.m_flow_rate, info.Net_work)

