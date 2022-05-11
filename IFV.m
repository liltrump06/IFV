
body1 = rigidBody('body1');
%% leg1
jnt11 = rigidBodyJoint('jnt11','revolute');
jnt11.HomePosition = pi/2;
jnt11.JointAxis = [0 1 0];
tform11 = trvec2tform([0.4, 0.25, -0.05]); % User defined
setFixedTransform(jnt11,tform11);
body1.Joint = jnt11;
robot = rigidBodyTree;
addBody(robot,body1,'base')
Thigh1 = rigidBody('Thigh1');
jnt12 = rigidBodyJoint('jnt12','revolute');
jnt12.JointAxis = [0 1 0];
jnt12.HomePosition = 0; % User defined
tform12 = trvec2tform([0.2, 0, 0]); % User defined
setFixedTransform(jnt12,tform12);
Thigh1.Joint = jnt12;
addBody(robot,Thigh1,'body1'); % Add body2 to body1
Leg1 = rigidBody('Leg1');
tform13 = trvec2tform([0.2, 0, 0]); % User defined
Leg1.Joint.Name = 'Jnt13';
setFixedTransform(Leg1.Joint,tform13);
addBody(robot,Leg1,'Thigh1');
%% 
arm2 = subtree(robot,'body1');
body2 = copy(getBody(arm2,'body1'));
thigh2 = copy(getBody(arm2,'Thigh1'));
leg2 = copy(getBody(arm2,'Leg1'));
thigh2.Name = 'Thigh2';
leg2.Name = 'Leg2';
body2.Name = 'body2';
body2.Joint = rigidBodyJoint('Jnt21','revolute');
thigh2.Joint = rigidBodyJoint('Jnt22','revolute');
leg2.Joint.Name = 'Jnt23';
body2.Joint.HomePosition = pi/2;
body2.Joint.JointAxis = [0 1 0];
thigh2.Joint.HomePosition = 0;
thigh2.Joint.JointAxis = [0 1 0];
tform21 = trvec2tform([0.4, -0.25, -0.05]); % User defined
tform22 = trvec2tform([0.2, 0, 0]);
tform23 = trvec2tform([0.2, 0, 0]);
setFixedTransform(body2.Joint,tform21);
setFixedTransform(thigh2.Joint,tform22);
replaceBody(arm2,'body1',body2);
replaceBody(arm2,'Thigh1',thigh2);
replaceBody(arm2,'Leg1',leg2);
addSubtree(robot,'base',arm2)
%%
arm3 = subtree(robot,'body1');
body3 = copy(getBody(arm3,'body1'));
thigh3 = copy(getBody(arm3,'Thigh1'));
leg3 = copy(getBody(arm3,'Leg1'));
thigh3.Name = 'Thigh3';
leg3.Name = 'Leg3';
body3.Name = 'body3';
body3.Joint = rigidBodyJoint('Jnt31','revolute');
thigh3.Joint = rigidBodyJoint('Jnt32','revolute');
leg3.Joint.Name = 'Jnt33';
body3.Joint.HomePosition = pi/2;
body3.Joint.JointAxis = [0 1 0];
thigh3.Joint.HomePosition = 0;
thigh3.Joint.JointAxis = [0 1 0];
tform31 = trvec2tform([-0.4,-0.25, -0.05]); % User defined
tform32 = trvec2tform([0.2, 0, 0]);
tform33 = trvec2tform([0.2, 0, 0]);
setFixedTransform(body3.Joint,tform31);
setFixedTransform(thigh3.Joint,tform32);
setFixedTransform(leg3.Joint,tform33);
replaceBody(arm3,'body1',body3);
replaceBody(arm3,'Thigh1',thigh3);
replaceBody(arm3,'Leg1',leg3);
addSubtree(robot,'base',arm3);
%%
arm4 = subtree(robot,'body1');
body4 = copy(getBody(arm4,'body1'));
thigh4 = copy(getBody(arm4,'Thigh1'));
leg4 = copy(getBody(arm4,'Leg1'));
thigh4.Name = 'Thigh4';
leg4.Name = 'Leg4';
body4.Name = 'body4';
body4.Joint = rigidBodyJoint('Jnt41','revolute');
thigh4.Joint = rigidBodyJoint('Jnt42','revolute');
leg4.Joint.Name = 'Jnt43';
body4.Joint.HomePosition = pi/2;
body4.Joint.JointAxis = [0 1 0];
thigh4.Joint.HomePosition = 0;
thigh4.Joint.JointAxis = [0 1 0];
tform41 = trvec2tform([-0.4, 0.25, -0.05]); % User defined
tform42 = trvec2tform([0.2, 0, 0]);
tform43 = trvec2tform([0.2, 0, 0]);
setFixedTransform(body4.Joint,tform41);
setFixedTransform(thigh4.Joint,tform42);
setFixedTransform(leg4.Joint,tform43);
replaceBody(arm4,'body1',body4);
replaceBody(arm4,'Thigh1',thigh4);
replaceBody(arm4,'Leg1',leg4);
addSubtree(robot,'base',arm4)

%%
robot.showdetails()
show(robot)
jointData = [-q11+pi/2,q12,-q21+pi/2,q22,-q31+pi/2,q32,-q41+pi/2,q42];
%%
robot.DataFormat = "row";
%%
v = VideoWriter('Output2.avi');
open(v); 
figure
for j = 1:20:length(q11)
    % Display manipulator model
    show(robot,jointData(j,:));
    view(10,0)
    % Update figure
    frame = getframe(gcf);
    writeVideo(v,frame);
    drawnow
end
