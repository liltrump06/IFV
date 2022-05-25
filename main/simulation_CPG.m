clc;clear
addpath('/home/liltrump/MATLAB-Drive/IFV_CommunicationOK/IFV-communicationOK/hopf')
Traj = load('Traj15s_c');
[q11,q12,q21,q22,q31,q32,q41,q42] = resample_hopf(Traj,0.001);
%%
time = linspace(0,length(q11)/1000-1,size(q11,1));
varLFT.signals.values = q11;
varLFT.time = time;
varLFT.signals.dimensions = 1;
varLFC.signals.values = q12;
varLFC.time = time;
varLFC.signals.dimensions = 1;
varRFT.signals.values = q21;
varRFT.time = time;
varRFT.signals.dimensions = 1;
varRFC.signals.values = q22;
varRFC.time = time;
varRFC.signals.dimensions = 1;
varLHT.signals.values = q41;
varLHT.time = time;
varLHT.signals.dimensions = 1;
varLHC.signals.values = q42;
varLHC.time = time;
varLHC.signals.dimensions = 1;
varRHT.signals.values = q31;
varRHT.time = time;
varRHT.signals.dimensions = 1;
varRHC.signals.values = q32;
varRHC.time = time;
varRHC.signals.dimensions = 1;
figure
subplot(4,1,1)
plot(time,q11,time,q12,'-')
legend('U1','V1')
axis([0,5,-2,2])
subplot(4,1,2)
plot(time,q21,time,q22,'-')
legend('U2','V2')
axis([0,5,-2,2])
subplot(4,1,3)
plot(time,q31,time,q32,'-')
legend('U3','V3')
axis([0,5,-2,2])
subplot(4,1,4)
plot(time,q41,time,q42,'-')
legend('U4','V4')
axis([0,5,-2,2])
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