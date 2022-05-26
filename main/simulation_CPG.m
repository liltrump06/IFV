clc;clear
global pi_m a k_r2
addpath('/home/liltrump/MATLAB-Drive/IFV_CommunicationOK/IFV-communicationOK/Trajectory/3order')
Traj = load('Traj_3ord10s');
dt = 0.001;
%[q11,q12,q21,q22,q31,q32,q41,q42] = resample_hopf(Traj,0.001);
%%
time = linspace(dt,length(Traj.leg1(:,1))/1000,size(Traj.leg1,1));
varLFT.signals.values = Traj.leg1(:,1)-pi;
varLFT.time = time;
varLFT.signals.dimensions = 1;
varLFC.signals.values = Traj.leg1(:,2);
varLFC.time = time;
varLFC.signals.dimensions = 1;
varRFT.signals.values = Traj.leg2(:,1)-pi;
varRFT.time = time;
varRFT.signals.dimensions = 1;
varRFC.signals.values = Traj.leg2(:,2);
varRFC.time = time;
varRFC.signals.dimensions = 1;
%%


Inertia;
IFV_param;
IFV_leg_load;

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