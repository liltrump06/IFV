body_l = 0.4;
body_w = 0.3;
body_h = 0.1;
thigh_l = 0.05;
thigh_w = 0.02;
thigh_h = 0.15;
calf_l = 0.04;
calf_w = 0.02;
calf_h = 0.15;
rou2 = 2000;
rou1 = 300;
mbody = body_l*body_w*body_h*rou1;
mthigh = thigh_l*thigh_w*thigh_h*rou2;
mcalf = calf_l*calf_w*calf_h*rou2;
Ibody = inertia_for_cube(body_l,body_w,body_h,mbody);
Ithigh = inertia_for_cube(thigh_l,thigh_w,thigh_h,mthigh);
Icalf = inertia_for_cube(calf_l,calf_w,calf_h,mcalf);

function I = inertia_for_cube(l,w,h,m)
I = [1/12*m*(h^2+w^2) 0 0;0 1/12*m*(h^2+l^2) 0;0 0 1/12*m*(l^2+w^2)];
end