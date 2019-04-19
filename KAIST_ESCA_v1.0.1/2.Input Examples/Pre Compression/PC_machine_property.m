% Mechanics Data file

PC_condition;

%%%% Components property %%%%

Mechanics.Turbine(1).P_ratio = 20000/8100;
Mechanics.Turbine(1).Eff = 0.90;

Mechanics.Compressor(1).Rel_P_ratio = 1.0;
Mechanics.Compressor(1).Eff = 0.84;

Mechanics.Compressor(2).Rel_P_ratio = 1.0;
Mechanics.Compressor(2).Eff = 0.84;

Mechanics.Cooler(1).dP = 150; %kPa

Mechanics.Recuperator(1).Eff = 0.95;
Mechanics.Recuperator(1).dP = [150, 150]; % Hot/Cold

Mechanics.Recuperator(2).Eff = 0.95;
Mechanics.Recuperator(2).dP = [150, 150]; % Hot/Cold

Mechanics.IHX(1).dP = 150;



% 
% %%%% Components property %%%%
% 
% Mechanics.Turbine(1).P_ratio = 20000/8100;
% Mechanics.Turbine(1).Eff = 0.90;
% 
% Mechanics.Compressor(1).Rel_P_ratio = 1.0;
% Mechanics.Compressor(1).Eff = 0.80;
% 
% Mechanics.Compressor(2).Rel_P_ratio = 1.0;
% Mechanics.Compressor(2).Eff = 0.80;
% 
% Mechanics.Cooler(1).dP = 40; %kPa
% Mechanics.Cooler(1).Target_T = Condition.Min_T;
% 
% Mechanics.Recuperator(1).Eff = 0.95;
% Mechanics.Recuperator(1).dP_H = 30; % Hot channel pressure drop (kPa)
% Mechanics.Recuperator(1).dP_C = 60; % Cold channel pressure drop (kPa)
% 
% Mechanics.Recuperator(2).Eff = 0.95;
% Mechanics.Recuperator(2).dP_H = 50; % Hot channel pressure drop (kPa)
% Mechanics.Recuperator(2).dP_C = 20; % Cold channel pressure drop (kPa)
% 
% Mechanics.IHX(1).dP = 20;
% 
% 