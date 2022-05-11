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

%%
model = sim("singleleg.slx");
t = model.logsout{5}.Values.time;
%%
q11 = model.logsout{8}.Values.Data;
q12 = model.logsout{1}.Values.Data;
q21 = model.logsout{5}.Values.Data;
q22 = model.logsout{2}.Values.Data;
q31 = model.logsout{6}.Values.Data;
q32 = model.logsout{3}.Values.Data;
q41 = model.logsout{7}.Values.Data;
q42 = model.logsout{4}.Values.Data;
figure
subplot(4,1,1)
plot(t,q11,t,q12,'-')
legend('U1','V1')
axis([0,5,-2,2])
subplot(4,1,2)
plot(t,q21,t,q22,'-')
legend('U2','V2')
axis([0,5,-2,2])
subplot(4,1,3)
plot(t,q31,t,q32,'-')
legend('U3','V3')
axis([0,5,-2,2])
subplot(4,1,4)
plot(t,q41,t,q42,'-')
legend('U4','V4')
axis([0,5,-2,2])
%%
%figure
%plot(t,q11,'-')
%hold on
%plot(t,q12,'-')
%%
