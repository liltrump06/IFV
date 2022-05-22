function dxdt = vdp_forHopf2(t,x)
f1 = 0;
f2 = 0;
alpha = 10000;
miu = 1;
lamda = 1;
wsw = 5*pi;
beta = 0.75;
wst = ((1-beta)/beta)*wsw;
b=1;
w = wst/(exp(-b*(x(2)-f2))+1)+wsw/(exp(b*(x(2)-f2))+1);
r = sqrt(x(1)^2+x(2)^2);

K1 = [6.12323399573677e-17,-1;1,6.12323399573677e-17];
K2 = [1,0;0,1];
K3 = [6.12323399573677e-17,1;-1,6.12323399573677e-17];
K4 = [-1,1.22464679914735e-16;-1.22464679914735e-16,-1];
M = K1*x+K2*x+K3*x+K4*x;


dxdt = [alpha*(miu-r^2)*(x(1)-f1)-lamda*w*(x(2)-f2)+M(1);
        alpha*(miu-r^2)*(x(2)-f2)+lamda*w*(x(1)-f1)+M(2)];
end