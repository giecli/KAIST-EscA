%%% Condition data file
% Recompression Brayton Cycle v2 : ��Ⱑ�� ��� Q_in�� Max_T��

% Condition.Plot = 'On';                                               % Cycle plot 'On' 
Condition.Fluid = 'CO2';                                             % Cycle fluid - Fluids on NIST property program are all available
Condition.Layout = 'Recompressing_Brayton_2';                          % Cycle layout selection 'Simple_Brayton'

Condition.Error_bound = 1E-07;                                       % Error bound (%)
Condition.Q_in = 250*1E6;                                          % Q_in, W
Condition.split = [0.67, 0.33, 1, 0];
Condition.split_link = [1, 2, 3, 4];                          % Linked split indicator
Condition.split_link_value = [1, 1];

% System Boundary Condition

Condition.T_bound.ID = [6, 1];
Condition.T_bound.value = [31.3 + 273.15, 505 + 273.15];
Condition.P_bound.ID = 7;
Condition.P_bound.value = 20000;

%%% Optimization

Condition.delt = 1e-5;
Condition.relaxation = 5;

%%%
Condition.Mechanical_Losses = 0;                                     % Based on Dostal's Work (%)
Condition.Parasitic_Losses =  0;                                     % Based on Dostal's Work (%)
Condition.SWyard_Losses = 0;                                         % Based on Dostal's Work (%)
Condition.View_Iter = 'OFF';
Condition.Generator_Eff =0.98;                                       % Generator Efficiency

