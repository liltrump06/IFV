%**************************************************************************
% VERONICA J. SANTOS
% HW4_load.m
%
% This script file was originally created by L. Villani, G. Oriolo, and
% B. Siciliano in Feb. 2009.  It has been modified for MAE C163C / C263C
% HW #4. The code modifies the dynamic parameters of the manipulator system 
% for a point mass payload and sets the pi_l vector.
%**************************************************************************
global pi_m a k_r2
% Note that this code assumes that the "inertia moments relative to 
% origins of link frames" in the param.m file follow the conventions 
% defined for the "augmented link" on page 283 of Siciliano et al. 
% As shown in Fig. 7.13, the frame O_i is located at joint i+1.


% mass
  m_load = 0;
  I_load = 0;

% inertia moment relative to the center of mass


% link 2 + load parameters
  % mass [kg]
    m_2 = m_2 + m_load;

  % inertia first moment
    m2_lC2 = m2_lC2;

  % inertia moment
    I_2 = I_2 + I_load;

% minimum set of arm + load dynamic parameters
  pi_l(1) = a(1)*m_1 + m1_lC1 + a(1)*m_2;
  pi_l(2) = a(1)*m1_lC1 + I_1 + k_r1^2*I_m1;
  pi_l(3) = a(2)*m_2 + m2_lC2;
  pi_l(4) = a(2)*m2_lC2 + I_2;
  pi_l(5) = I_m2;
