# IFV
All files about IFV  

# main
`control_demo.slx` is the simulink-gazebo co-simulation file, which include inverse dynamic controller and the communication block.  
Before running this model, run`control_demo_prepare.m` to prepare trajectory and other parameters.  
` Decen_control.slx` includes a different version using decentralized control.
Before running this model, run`Decen_control_prepare.m` to prepare trajectory and other parameters.  

# Trajectory
Firstly, run `3order/generate.m` to get the operational trajectory.  
Then, run `3order/IFV_PCconfig.m` to get the desired joint space position, velocity and acceleration trajectory.

# xmlfile
`IFVsim.world` is the world file.  
`model.condig` and `model.sdf` is the sdf file, which describe the model of the robot. You should save them at /home/.gazebo/model folder as the same format as other model.

# RST_demo
Files in `RST_demo` is used for CPG design, which have no relation to the 263C project.

