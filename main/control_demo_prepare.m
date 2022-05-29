clc;clear
global pi_m a k_r2
addpath('/home/liltrump/MATLAB-Drive/IFV_CommunicationOK/IFV-communicationOK/Trajectory/3order')
Traj1 = load('Traj_3ord10s');
%Traj2 = load('Traj_3ord10s_1.mat');
dt = 0.001;
%[q11,q12,q21,q22,q31,q32,q41,q42] = resample_hopf(Traj,0.001);
%%
len = length(Traj1.leg1(:,1));
time = linspace(dt,length(Traj1.leg1(:,1))/1000,size(Traj1.leg1,1));
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


%%
Inertia;
IFV_param;
IFV_leg_load;
K_a = diag([0.001,0.001]);
K_p = diag([1000,1000]);
K_d = diag([5,5]);
Tc = 0.001;
Ts = Tc;
F_v = diag([100,100]);
g = 9.81;
sat_floor = -40;
sat_ceiling = -sat_floor;
load("bus_set.mat")
fil=0.0001;
%%
plot(out.tout,out.simout.Data(:,2))
% varLHT.signals.values = Traj2.leg2(:,1)-pi;
% varLHT.time = time;
% varLHT.signals.dimensions = 1;
% varLHC.signals.values = Traj2.leg2(:,2);
% varLHC.time = time;
% varLHC.signals.dimensions = 1;
% varRHT.signals.values = Traj2.leg1(:,1)-pi;
% varRHT.time = time;
% varRHT.signals.dimensions = 1;
% varRHC.signals.values = Traj2.leg1(:,2);
% varRHC.time = time;
% varRHC.signals.dimensions = 1;