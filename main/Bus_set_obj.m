function Bus_set_obj() 
% BUS_SET_OBJ initializes a set of bus objects in the MATLAB base workspace 

% Bus object: Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'model_name';
elems(1).Dimensions = 128;
elems(1).DimensionsMode = 'Variable';
elems(1).DataType = 'uint8';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf('PrimitiveStringType=string:IsVarLen=1');

elems(2) = Simulink.BusElement;
elems(2).Name = 'joint_name';
elems(2).Dimensions = 128;
elems(2).DimensionsMode = 'Variable';
elems(2).DataType = 'uint8';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf('PrimitiveStringType=string:IsVarLen=1');

elems(3) = Simulink.BusElement;
elems(3).Name = 'index';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'uint32';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'effort';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

elems(5) = Simulink.BusElement;
elems(5).Name = 'duration';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_Time';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = sprintf('MsgType=gazebo_msgs/Time');

Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque.Description = sprintf('MsgType=gazebo_msgs/ApplyJointTorque');
Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque', Gazebo_SL_Bus_gazebo_msgs_ApplyJointTorque);

% Bus object: Gazebo_SL_Bus_gazebo_msgs_Axis 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'xyz';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_PointArray';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf('MsgType=gazebo_msgs/PointArray');

elems(2) = Simulink.BusElement;
elems(2).Name = 'limit_lower';
elems(2).Dimensions = 128;
elems(2).DimensionsMode = 'Variable';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf('IsVarLen=1');

elems(3) = Simulink.BusElement;
elems(3).Name = 'limit_upper';
elems(3).Dimensions = 128;
elems(3).DimensionsMode = 'Variable';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = sprintf('IsVarLen=1');

elems(4) = Simulink.BusElement;
elems(4).Name = 'limit_effort';
elems(4).Dimensions = 128;
elems(4).DimensionsMode = 'Variable';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = sprintf('IsVarLen=1');

elems(5) = Simulink.BusElement;
elems(5).Name = 'limit_velocity';
elems(5).Dimensions = 128;
elems(5).DimensionsMode = 'Variable';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = sprintf('IsVarLen=1');

elems(6) = Simulink.BusElement;
elems(6).Name = 'damping';
elems(6).Dimensions = 128;
elems(6).DimensionsMode = 'Variable';
elems(6).DataType = 'double';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = sprintf('IsVarLen=1');

elems(7) = Simulink.BusElement;
elems(7).Name = 'friction';
elems(7).Dimensions = 128;
elems(7).DimensionsMode = 'Variable';
elems(7).DataType = 'double';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = sprintf('IsVarLen=1');

elems(8) = Simulink.BusElement;
elems(8).Name = 'use_parent_model_frame';
elems(8).Dimensions = 128;
elems(8).DimensionsMode = 'Variable';
elems(8).DataType = 'boolean';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = sprintf('IsVarLen=1');

Gazebo_SL_Bus_gazebo_msgs_Axis = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_Axis.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_Axis.Description = sprintf('MsgType=gazebo_msgs/Axis');
Gazebo_SL_Bus_gazebo_msgs_Axis.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_Axis.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_Axis.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_Axis.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_Axis', Gazebo_SL_Bus_gazebo_msgs_Axis);

% Bus object: Gazebo_SL_Bus_gazebo_msgs_JointState 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'model_name';
elems(1).Dimensions = 128;
elems(1).DimensionsMode = 'Variable';
elems(1).DataType = 'uint8';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf('IsVarLen=1');

elems(2) = Simulink.BusElement;
elems(2).Name = 'joint_name';
elems(2).Dimensions = 128;
elems(2).DimensionsMode = 'Variable';
elems(2).DataType = 'uint8';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf('IsVarLen=1');

elems(3) = Simulink.BusElement;
elems(3).Name = 'joint_id';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'uint32';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'joint_position';
elems(4).Dimensions = 128;
elems(4).DimensionsMode = 'Variable';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = sprintf('IsVarLen=1');

elems(5) = Simulink.BusElement;
elems(5).Name = 'joint_velocity';
elems(5).Dimensions = 128;
elems(5).DimensionsMode = 'Variable';
elems(5).DataType = 'double';
elems(5).Complexity = 'real';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = sprintf('IsVarLen=1');

elems(6) = Simulink.BusElement;
elems(6).Name = 'joint_type';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'int32';
elems(6).Complexity = 'real';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = '';

elems(7) = Simulink.BusElement;
elems(7).Name = 'parent_name';
elems(7).Dimensions = 128;
elems(7).DimensionsMode = 'Variable';
elems(7).DataType = 'uint8';
elems(7).Complexity = 'real';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = sprintf('IsVarLen=1');

elems(8) = Simulink.BusElement;
elems(8).Name = 'parent_id';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'uint32';
elems(8).Complexity = 'real';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = '';

elems(9) = Simulink.BusElement;
elems(9).Name = 'child_name';
elems(9).Dimensions = 128;
elems(9).DimensionsMode = 'Variable';
elems(9).DataType = 'uint8';
elems(9).Complexity = 'real';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = sprintf('IsVarLen=1');

elems(10) = Simulink.BusElement;
elems(10).Name = 'child_id';
elems(10).Dimensions = 1;
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'uint32';
elems(10).Complexity = 'real';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = '';

elems(11) = Simulink.BusElement;
elems(11).Name = 'initial_anchor_pose';
elems(11).Dimensions = 1;
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_Pose';
elems(11).Complexity = 'real';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = sprintf('MsgType=gazebo_msgs/Pose');

elems(12) = Simulink.BusElement;
elems(12).Name = 'world_pose';
elems(12).Dimensions = 1;
elems(12).DimensionsMode = 'Fixed';
elems(12).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_Pose';
elems(12).Complexity = 'real';
elems(12).Min = [];
elems(12).Max = [];
elems(12).DocUnits = '';
elems(12).Description = sprintf('MsgType=gazebo_msgs/Pose');

elems(13) = Simulink.BusElement;
elems(13).Name = 'parent_world_pose';
elems(13).Dimensions = 1;
elems(13).DimensionsMode = 'Fixed';
elems(13).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_Pose';
elems(13).Complexity = 'real';
elems(13).Min = [];
elems(13).Max = [];
elems(13).DocUnits = '';
elems(13).Description = sprintf('MsgType=gazebo_msgs/Pose');

elems(14) = Simulink.BusElement;
elems(14).Name = 'axis';
elems(14).Dimensions = 1;
elems(14).DimensionsMode = 'Fixed';
elems(14).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_Axis';
elems(14).Complexity = 'real';
elems(14).Min = [];
elems(14).Max = [];
elems(14).DocUnits = '';
elems(14).Description = sprintf('MsgType=gazebo_msgs/Axis');

Gazebo_SL_Bus_gazebo_msgs_JointState = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_JointState.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_JointState.Description = sprintf('MsgType=gazebo_msgs/JointState');
Gazebo_SL_Bus_gazebo_msgs_JointState.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_JointState.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_JointState.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_JointState.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_JointState', Gazebo_SL_Bus_gazebo_msgs_JointState);

% Bus object: Gazebo_SL_Bus_gazebo_msgs_Point 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'x';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'y';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'z';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

Gazebo_SL_Bus_gazebo_msgs_Point = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_Point.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_Point.Description = sprintf('MsgType=gazebo_msgs/Point');
Gazebo_SL_Bus_gazebo_msgs_Point.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_Point.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_Point.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_Point.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_Point', Gazebo_SL_Bus_gazebo_msgs_Point);

% Bus object: Gazebo_SL_Bus_gazebo_msgs_PointArray 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'x';
elems(1).Dimensions = 128;
elems(1).DimensionsMode = 'Variable';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf('IsVarLen=1');

elems(2) = Simulink.BusElement;
elems(2).Name = 'y';
elems(2).Dimensions = 128;
elems(2).DimensionsMode = 'Variable';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf('IsVarLen=1');

elems(3) = Simulink.BusElement;
elems(3).Name = 'z';
elems(3).Dimensions = 128;
elems(3).DimensionsMode = 'Variable';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = sprintf('IsVarLen=1');

Gazebo_SL_Bus_gazebo_msgs_PointArray = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_PointArray.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_PointArray.Description = sprintf('MsgType=gazebo_msgs/PointArray');
Gazebo_SL_Bus_gazebo_msgs_PointArray.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_PointArray.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_PointArray.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_PointArray.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_PointArray', Gazebo_SL_Bus_gazebo_msgs_PointArray);

% Bus object: Gazebo_SL_Bus_gazebo_msgs_Pose 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'position';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_Point';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf('MsgType=gazebo_msgs/Point');

elems(2) = Simulink.BusElement;
elems(2).Name = 'orientation';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'Bus: Gazebo_SL_Bus_gazebo_msgs_Quaternion';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf('MsgType=gazebo_msgs/Quaternion');

Gazebo_SL_Bus_gazebo_msgs_Pose = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_Pose.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_Pose.Description = sprintf('MsgType=gazebo_msgs/Pose');
Gazebo_SL_Bus_gazebo_msgs_Pose.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_Pose.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_Pose.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_Pose.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_Pose', Gazebo_SL_Bus_gazebo_msgs_Pose);

% Bus object: Gazebo_SL_Bus_gazebo_msgs_Quaternion 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'x';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'y';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'z';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

elems(4) = Simulink.BusElement;
elems(4).Name = 'w';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).Complexity = 'real';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = '';

Gazebo_SL_Bus_gazebo_msgs_Quaternion = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_Quaternion.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_Quaternion.Description = sprintf('MsgType=gazebo_msgs/Quaternion');
Gazebo_SL_Bus_gazebo_msgs_Quaternion.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_Quaternion.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_Quaternion.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_Quaternion.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_Quaternion', Gazebo_SL_Bus_gazebo_msgs_Quaternion);

% Bus object: Gazebo_SL_Bus_gazebo_msgs_Time 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'seconds';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'nano_seconds';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

Gazebo_SL_Bus_gazebo_msgs_Time = Simulink.Bus;
Gazebo_SL_Bus_gazebo_msgs_Time.HeaderFile = '';
Gazebo_SL_Bus_gazebo_msgs_Time.Description = sprintf('MsgType=gazebo_msgs/Time');
Gazebo_SL_Bus_gazebo_msgs_Time.DataScope = 'Auto';
Gazebo_SL_Bus_gazebo_msgs_Time.Alignment = -1;
Gazebo_SL_Bus_gazebo_msgs_Time.PreserveElementDimensions = 0;
Gazebo_SL_Bus_gazebo_msgs_Time.Elements = elems;
clear elems;
assignin('base','Gazebo_SL_Bus_gazebo_msgs_Time', Gazebo_SL_Bus_gazebo_msgs_Time);

