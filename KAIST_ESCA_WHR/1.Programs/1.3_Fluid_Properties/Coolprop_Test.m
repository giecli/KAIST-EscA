clear all
close all
clc

cp_cool = [2974.460480114461,
 3059.8411716424994,
 3157.2134305917225,
 3269.294659174504,
 3399.804649271402,
 3554.0537404924517,
 3739.976197801258,
 3970.004120823396,
 4264.613909795963,
 4659.478129778843,
 5221.372493688483,
 6089.384562672233,
 7609.395772925077,
 10935.791825678176,
 22484.06427080659,
 29593.717862473302,
 13823.99358165698,
 9116.879431673653,
 6970.320410277068,
 5744.9234289174365,
 4950.092059573963,
 4390.749520849922,
 3974.36768335307,
 3651.4498458210637,
 3393.1069451824465,
 3181.327244429726,
 3004.285126307013,
 2853.88698957626,
 2724.401015442246,
 2611.650300731735,
 2512.5162314883232,
 2424.6211504638395,
 2346.119095639799,
 2275.5537139597827,
 2211.759707861267,
 2153.79280788334,
 2100.879142239363,
 2052.3779939058068,
 2007.7539843558977,
 1966.5560081227436,
 1928.4010763846966,
 1892.9617802228956,
 1859.9564570119398,
 1829.1413992740925,
 1800.3046236623593,
 1773.2608437957695,
 1747.8473809292327,
 1723.920811833477,
 1701.35420115375,
 1680.034800943735,
 1659.8621265205854,
 1640.74633770424,
 1622.6068696235498,
 1605.3712688375006,
 1588.9741994321105,
 1573.3565906701936,
 1558.4649031764793,
 1544.2504948937367,
 1530.669071415022,
 1517.6802079844874,
 1505.246932617142,
 1493.3353615318733,
 1481.914379510922,
 1470.9553589605632,
 1460.4319124044569,
 1450.3196739336204,
 1440.596105797286,
 1431.2403268713401,
 1422.232960205938,
 1413.5559972463172,
 1405.1926766534573,
 1397.127375934263,
 1389.3455143321514,
 1381.8334656353554,
 1374.5784797370127,
 1367.5686119330037,
 1360.7926590741051,
 1354.2401018015266,
 1347.9010521920027,
 1341.7662062224817,
 1335.826800536996,
 1330.0745730611416,
 1324.5017270640988,
 1319.1008983154632,
 1313.865125025294,
 1308.7878202916586,
 1303.8627468111856,
 1299.0839936354716,
 1294.4459547800761,
 1289.943309513771,
 1285.5710041741213,
 1281.3242353716334,
 1277.198434458977,
 1273.18925315437,
 1269.2925502193366,
 1265.5043791009505,
 1261.820976457415,
 1258.238751493618,
 1254.7542760402907,
 1251.364275316566];

for i=1:100
    T(i) = 19 + i + 273.15;
    C(i) = refpropm('C', 'T', T(i), 'P', 8000, 'CO2');
end

plot(T,  C, 'k')
hold
plot(T, transpose(cp_cool), 'ko--')
    