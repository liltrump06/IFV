clc;clear
%% Load trajectory
addpath('/home/liltrump/MATLAB-Drive/IFV_CommunicationOK/IFV-communicationOK/Trajectory/3order')
Traj1 = load('Traj_3ord10s1');
%Traj2 = load('Traj_3ord10s_1.mat');
T = Traj1.T;
dt = Traj1.dt;
time = 0:dt:(length(Traj1.leg1(:,1))-1)*dt;
varLFT.signals.values = Traj1.leg1(:,1);
varLFT.time = time;
varLFT.signals.dimensions = 1;
varLFC = varLFT;
varRFT = varLFT;
varRFC = varLFT;
dvarLFT = varLFT;
dvarLFC = varLFT;
dvarRFT = varLFT;
dvarRFC = varLFT;
ddvarLFT = varLFT;
ddvarLFC = varLFT;
ddvarRFT = varLFT;
ddvarRFC = varLFT;
varLFC.signals.values = Traj1.leg1(:,2);
varRFT.signals.values = Traj1.leg2(:,1);
varRFC.signals.values = Traj1.leg2(:,2);

dvarLFT.signals.values = Traj1.dleg1(:,1);
dvarLFC.signals.values = Traj1.dleg1(:,2);
dvarRFT.signals.values = Traj1.dleg2(:,1);
dvarRFC.signals.values = Traj1.dleg2(:,2);

ddvarLFT.signals.values = Traj1.ddleg1(:,1);
ddvarLFC.signals.values = Traj1.ddleg1(:,2);
ddvarRFT.signals.values = Traj1.ddleg2(:,1);
ddvarRFC.signals.values = Traj1.ddleg2(:,2);
%% load parameter
% controller
Kp1 = 5000;
Kd1 = 1;
ktp = 1;
ktv = 0.1;
kta = 0.001;
Tv = 1;
sat_floor = -10;
sat_ceiling = -sat_floor;
fil=0.1;
load("bus_set.mat")
Tc = 0.001;
Ts = Tc;