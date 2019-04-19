% Mechanics Data file

%%%% Components property %%%%

Mechanics.Turbine(1).P_ratio = 13850/7400;
Mechanics.Turbine(1).indicator = 0; % Outlet condition indicator / -1: Bounded, 0: free, else : indicating. P target junction
Mechanics.Turbine(1).Eff = 0.80;

Mechanics.Compressor(1).P_ratio = 10000/7400;
Mechanics.Compressor(1).Rel_P_ratio = 1.0;
Mechanics.Compressor(1).indicator = 0; % Outlet condition indicator / -1: Bounded, 0: free, else : indicating. P target junction
Mechanics.Compressor(1).Eff = 0.70;

Mechanics.Compressor(2).Rel_P_ratio = 1.0;
Mechanics.Compressor(2).indicator = -1; % Outlet condition indicator / -1: Bounded, 0: free, else : indicating. P target junction
Mechanics.Compressor(2).Eff = 0.70;

Mechanics.Cooler(1).dP = -0.01; %kPa
Mechanics.Cooler(2).dP = -0.01; %kPa

Mechanics.Recuperator(1).Eff = 0.91;
Mechanics.Recuperator(1).dP = [-0.015, -0.015]; % Hot/Cold

Mechanics.WHR(1).Eff = 0.75;
Mechanics.WHR(1).dP = [-0.015, -0.01];
