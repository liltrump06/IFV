% robot define
clc;clear;close all
a1=0.125;a2=0.145;
L(1) = Link('revolute','d',0,'a',0,'alpha',0,'modified');
L(2) = Link('revolute','d',0,'a',-0.125,'alpha',0,'modified');

tool = transl(-0.145,0,0);
robot = SerialLink([L(1),L(2)], 'tool', tool,'name','IFV-singleleg');
%robot.plot([0,0])
%view([90,90])
syms q1 q2 real
robot.jacob0([q1,q2]);
%%
s = load("ope_3order.mat");
T = s.T;
dt = s.dt;
xlist = [s.x1list;s.x2list];
ylist = [s.y1list;s.y2list];
qold = [0;0];
q1list = [];
q2list = [];
for i = 1:length(xlist)
    Tr = SE3([eye(3),[xlist(i);ylist(i);0];[0 0 0 1]]);
    if i == 1
        q = robot.ikine(Tr,'q0',[0,0],'mask',[1 1 0 0 0 0]);
    else
        q = robot.ikine(Tr,'q0',q1list(i-1,:),'mask',[1 1 0 0 0 0]);
    end
    q1list = [q1list;q];
end
xlist = [s.x2list;s.x1list];
ylist = [s.y2list;s.y1list];
for i = 1:length(xlist)
    Tr = SE3([eye(3),[xlist(i);ylist(i);0];[0 0 0 1]]);
    if i == 1
        q = robot.ikine(Tr,'q0',q1list(250,:),'mask',[1 1 0 0 0 0]);
    else
        q = robot.ikine(Tr,'q0',q2list(i-1,:),'mask',[1 1 0 0 0 0]);
    end
    q2list = [q2list;q];
end
q1list(:,1) = q1list(:,1);
q2list(:,1) = q2list(:,1);
%%
dxlist = [s.dx1list;s.dx2list];
dylist = [s.dy1list;s.dy2list];
dq1list = [];
dq2list = [];
for i = 1:length(dxlist)
    J = robot.jacob0(q1list(i,:));
    dq = J(1:2,1:2)\[dxlist(i);dylist(i)];
    dq1list = [dq1list;dq'];
end
dxlist = [s.dx2list;s.dx1list];
dylist = [s.dy2list;s.dy1list];
for i = 1:length(dxlist)
    J = robot.jacob0(q2list(i,:));
    dq = J(1:2,1:2)\[dxlist(i);dylist(i)];
    dq2list = [dq2list;dq'];
end
%%
%%
ddxlist = [s.ddx1list;s.ddx2list];
ddylist = [s.ddy1list;s.ddy2list];
ddq1list = [];
ddq2list = [];
for i = 1:length(ddxlist)
    J = robot.jacob0(q1list(i,:));
    dJ = accinv(q1list(i,1),q1list(i,2),dq1list(i,1),dq1list(i,2));
    ddq = J(1:2,1:2)\[ddxlist(i);ddylist(i)]-dJ*dq1list(i,:)';
    ddq1list = [ddq1list;ddq'];
end
ddxlist = [s.ddx2list;s.ddx1list];
ddylist = [s.ddy2list;s.ddy1list];
for i = 1:length(dxlist)
    J = robot.jacob0(q2list(i,:));
    dJ = accinv(q2list(i,1),q2list(i,2),dq2list(i,1),dq2list(i,2));
    ddq = J(1:2,1:2)\[ddxlist(i);ddylist(i)]-dJ*dq2list(i,:)';
    ddq2list = [ddq2list;ddq'];
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
figure
%plot(dq1list(:,2))
%hold on 
plot(q1list(:,1))
%plot(ddq1list(:,2))
hold on
plot([s.x1list;s.x2list])
hold off
%%
[jb1,djb1,ddjb1] = jtraj([0,0],[0,0],0:dt:0.5-dt);
[jb2,djb2,ddjb2] = jtraj([0,0],q1list(round(T/dt*3/4),:),0:dt:0.5-dt);
[jb31,djb31,ddjb31] = jtraj(q1list(round(T/dt*3/4),:),q1list(round(T/dt),:),0:dt:0.5-dt);
[jb32,djb32,ddjb32] = jtraj(q1list(round(T/dt*3/4),:),q1list(round(T/dt*2/4),:),0:dt:0.5-dt);
jb41 = q1list(round(T/dt),:).*ones(0.5/dt,2);
djb41 = zeros(0.5/dt,2);
ddjb41 = zeros(0.5/dt,2);
jb42 = q1list(round(T/dt*2/4),:).*ones(0.5/dt,2);
q1b = [jb1;jb2;jb31;jb41];
dq1b = [djb1;djb2;djb31;djb41];
ddq1b = [ddjb1;ddjb2;ddjb31;ddjb41];
q2b = [jb1;jb2;jb32;jb42];
dq2b = [djb1;djb2;djb32;djb41];
ddq2b = [ddjb1;ddjb2;ddjb32;ddjb41];
%%
time = 15;
leg1 = [];
leg2 = [];
dleg1 = [];
dleg2 = [];
ddleg1 = [];
ddleg2 = [];
for i = 1:time
    leg1 = [leg1;q1list];
    leg2 = [leg2;q2list];
    dleg1 = [dleg1;dq1list];
    dleg2 = [dleg2;dq2list];
    ddleg1 = [ddleg1;ddq1list];
    ddleg2 = [ddleg2;ddq2list];
end
Tstand = T/dt+1;
leg1b = q1list(1,:);
leg2b = q2list(1,:);
leg1 = [q1b;leg1];
leg2 = [q2b;leg2];
dleg1 = [dq1b;dleg1];
dleg2 = [dq2b;dleg2];
ddleg1 = [ddq1b;ddleg1];
ddleg2 = [ddq2b;ddleg2];
save('Traj_3ord10s1.mat','dt','T','leg1','leg2','dleg1','dleg2','ddleg1',"ddleg2")
%%
plot(leg2(:,1))