function [q1,q2] = inv2R(x,y,a1,a2)
 
q2 = acos((x^2+y^2-a1^2-a2^2)/(2*a1*a2));
q1 = atan2(y,x)-atan2(a2*sin(q2),(a1+a2*cos(q2)));
if -pi>q2 
    q2 = q2+2*pi;
elseif pi<q2
    q2 = q2-2*pi;
end
if -pi>q1 
    q1 = q1+2*pi;
elseif pi<q1
    q1 = q1-2*pi;
end
