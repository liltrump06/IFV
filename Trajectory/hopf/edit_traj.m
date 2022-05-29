clc;clear;close all
s = load("Traj15s.mat");
ds = load("Traj15s.mat");
%% edit
m = fieldnames(s);
dm = fieldnames(ds);
dt = 0.0001;
blank = zeros(1/dt,1);
point = 50;
for i = 1:length(m)
    k = m(i);
    dk = dm(i);
    key = k{1};
    dkey = dk{1};
    var = s.(key);
    dvar = ds.(dkey);
    len = length(var);
    
    % delete t = 0 s
    var(1:point)=0;
    % calculate via point
    dvar(point+1)
    via = jtraj(var(1),var(point+1),0.25/dt,0,dvar(point+2));
    qd = [blank;via;var(point+2:len)];
    s.(key) = qd;
end
%%
save('Traj15s_c.mat','s')

    
