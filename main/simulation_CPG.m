f1 = 0;
f2 = 0;
alpha = 10000;
miu = 0.2;
lamda = 1;
wsw = 5*pi;
beta = 0.75;
wst = (1-beta)/beta*wsw;
b=100;
Traj = load('traj_15s');
[q11,q12,q21,q22,q31,q32,q41,q42] = resample_hopf(Traj,0.001);
%%
time = linspace(0,15,size(q11,1));
varq11.signals.values = q11;
varq11.time = time;
varq11.signals.dimensions = 1;
varq12.signals.values = q12;
varq12.time = time;
varq12.signals.dimensions = 1;
varq21.signals.values = q21;
varq21.time = time;
varq21.signals.dimensions = 1;
varq22.signals.values = q22;
varq22.time = time;
varq22.signals.dimensions = 1;
varq31.signals.values = q31;
varq31.time = time;
varq31.signals.dimensions = 1;
varq32.signals.values = q32;
varq32.time = time;
varq32.signals.dimensions = 1;
varq41.signals.values = q41;
varq41.time = time;
varq41.signals.dimensions = 1;
varq42.signals.values = q42;
varq42.time = time;
varq42.signals.dimensions = 1;
%%
global pi_m a k_r2
cyclelist = [0 0.5 0 0.5];
for i = 1:size(cyclelist,2)
    for j = 1:size(cyclelist,2)
        th = 2*pi*(cyclelist(i)-cyclelist(j));
        K{i,j} = [cos(th),-sin(th);sin(th),cos(th)];
    end
end

Inertia;
IFV_param;
IFV_leg_load;

K_p = diag([500,500]);
K_d = diag([50,50]);
Tc = 0.001;
Ts = Tc;
F_v = diag([100,100]);
g = 9.81;
sat_floor = -40;
sat_ceiling = -sat_floor;