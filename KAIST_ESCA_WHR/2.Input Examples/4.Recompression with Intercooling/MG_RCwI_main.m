close all
clear
% clc

addpath(genpath('D:\Dropbox\MATLAB\Now_Working\KAIST-ESCA\KAIST_ESCA_WHR'))

% Generalized CCD - 20170619 ~
% Single IHX cases
% Cooler / TIT : T bounded
% Main compressor : P bounded

MG_RCwI_condition
MG_RCwI_layout
MG_RCwI_machine_property

% System Boundary Condition
Condition.delt = 1e-4;
Condition.relaxation = 3;
Condition.Error_bound = 1e-7;

Condition.Pri_m = 16.28;
Condition.T_bound.ID = [6, 13, 15];
Condition.T_bound.value = [32 + 273.15, 32 + 273.15, 500 + 273.15];
Condition.P_bound.ID = [14, 15];
Condition.P_bound.value = [13850, 103];
Condition.Problem = 'Work';

Mechanics.Turbine(1).P_ratio = 2;

iParameters.name = {'Condition.m_flow_rate', 'Mechanics.Turbine(1).P_ratio', 'Condition.split(1)', 'Mechanics.Compressor(1).P_ratio'};
iParameters.value = [30, 13850/7400, 0.4, 10000/7500];
iParameters.max = [80, 3.0, 0.99, 1.5];
iParameters.min = [12, 1.2, 0.2, 1.1];

mu_0 = 0.1; % damping factor


[Junc, info] = Steady_Solver_WHR(Condition, Component, Mechanics);
Output_Result_info(Condition, Junc, Component, info.m_flow_rate, info.Net_work)

[P, Junc, info] = Cycle_Optimizer_WHR(Condition, Component, Mechanics, iParameters, mu_0);
  

