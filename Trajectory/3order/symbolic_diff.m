% symbolic_diff
syms ti S T h H1 real
y1 = -16*S*ti^3/T^3+12*S*ti^2/T^2-S/2;
%x1 = -128*(H1-h)*ti^3/T^3+48*(H1-h)*ti^2/T^2-H1;
x1 = 128*(H1-h)*ti^3/T^3-144*(H1-h)*ti^2/T^2+48*(H1-h)*ti/T+4*h-5*H1;
y2 = 16*S*ti^3/T^3-36*S*ti^2/T^2+24*S*ti/T-4*S-S/2;
dy1 = diff(y1,ti)
ddy1 = diff(dy1,ti)
dx1 = diff(x1,ti)
ddx1 = diff(dx1,ti)
dy2 = diff(y2,ti)
ddy2 = diff(dy2,ti)

