% robot define
clc;clear;close all
a1=125;a2=145;
L(1) = Link('revolute','d',0,'a',0,'alpha',0,'modified');
L(2) = Link('revolute','d',20,'a',-125,'alpha',0,'modified');

tool = transl(-145,0,0);
robot = SerialLink([L(1),L(2)], 'tool', tool,'name','IFV-singleleg');
%robot.plot([0,0])
view([90,90])
%%
s = load("ope_3order.mat");
xlist = [s.x1list;s.x2list];
ylist = [s.y1list;s.y2list];
qold = [0;0];
q1list = [];
q2list = [];
for i = 1:length(xlist)
    [q1,q2] = inv2R(xlist(i),ylist(i),a1,a2);
    q1list = [q1list;[q1,q2]];
end
xlist = [s.x2list;s.x1list];
ylist = [s.y2list;s.y1list];
for i = 1:length(xlist)
    [q1,q2] = inv2R(xlist(i),ylist(i),a1,a2);
    q2list = [q2list;[q1,q2]];
end
%%
%figure(2)
%for  k = 1:length(xlist)
%    if mod (k,20) ==0
%        robot.plot(q2list(k,:))
%        view([90,90])
%        drawnow
%    end
%end
%%
figure(3)
subplot(2,1,1)
plot(s.t,q1list(:,1),s.t,q1list(:,2))
subplot(2,1,2)
plot(s.t,q2list(:,1),s.t,q2list(:,2))
%%
time = 10;
leg1 = [];
leg2 = [];
for i = 1:time
    leg1 = [leg1;q1list];
    leg2 = [leg2;q2list];
end
save('Traj_3ord10s.mat','leg1','leg2')