function [q11,q12,q21,q22,q31,q32,q41,q42] = resample_hopf(traj,dt)
%% origin sample rate is 0.1ms
ts = 0.0001;
q11 = [];q12 = [];q21 = [];q22 = [];q31 = [];q32 = [];q41 = [];q42 = [];
whole = size(traj.s.q11,1);
for i = 1:whole
    if i == 1
        q11 = [q11;traj.s.q11(i)];
        q12 = [q12;traj.s.q12(i)];
        q21 = [q21;traj.s.q21(i)];
        q22 = [q22;traj.s.q22(i)];
        q31 = [q31;traj.s.q31(i)];
        q32 = [q32;traj.s.q32(i)];
        q41 = [q41;traj.s.q41(i)];
        q42 = [q42;traj.s.q42(i)];
    elseif mod(i,dt/ts) == 0
        q11 = [q11;traj.s.q11(i)];
        q12 = [q12;traj.s.q12(i)];
        q21 = [q21;traj.s.q21(i)];
        q22 = [q22;traj.s.q22(i)];
        q31 = [q31;traj.s.q31(i)];
        q32 = [q32;traj.s.q32(i)];
        q41 = [q41;traj.s.q41(i)];
        q42 = [q42;traj.s.q42(i)];
    end
end
%new_traj = struct('q11',q11,'q12',q12,'q21',q21,'q22',q22,'q31',q31,'q32',q32,'q41',q41,'q42',q42);


