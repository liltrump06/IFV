clc;clear;close all
f1 = 0;
f2 = 0;
alpha = 10000;
miu = 0.2;
lamda = 1;
wsw = 5*pi;
beta = 0.75;
wst = (1-beta)/beta*wsw;
b=100;
%
cyclelist = [0 0.5 0 0.5];
for i = 1:size(cyclelist,2)
    for j = 1:size(cyclelist,2)
        th = 2*pi*(cyclelist(i)-cyclelist(j));
        K{i,j} = [cos(th),-sin(th);sin(th),cos(th)];
    end
end
IFV_param;
IFV_leg_load;

K_p = diag([500,500]);
K_d = diag([500,500]);
Tc = 0.001;

sim('gazebodemo.slx')