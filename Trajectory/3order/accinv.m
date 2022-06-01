function dJ = accinv(q1,q2,dq1,dq2)
dJ11 = 0.125*sin(q2)*sin(q1 + q2)*dq2 - 0.125*sin(q2)*sin(q1 + q2)*(dq1 + dq2) -...
cos(q1 + q2)*(0.125*cos(q2) + 0.145)*(dq1 + dq2) + 0.125*cos(q2)*cos(q1 + q2)*dq2;
dJ12 = -0.145*cos(q1 + q2)*(dq1 + dq2);
dJ21 = 0.125*cos(q2)*sin(q1 + q2)*dq2 - 0.125*sin(q2)*cos(q1 + q2)*dq2 + ...
0.125*sin(q2)*cos(q1 + q2)*(dq1 + dq2) - sin(q1 + q2)*(0.125*cos(q2) + 0.145)*(dq1 + dq2);
dJ22 = -0.145*sin(q1 + q2)*(dq1 + dq2);
dJ = [dJ11,dJ12;dJ21,dJ22];
