clc;clear;close all
T = 0.5;
S = 0.05;
h = 0.24-0.035;
H1 = 0.24;
dt = 0.001;
t = linspace(0,T-dt,T/dt);
x1list = [];
y1list = [];
x2list = [];
y2list = [];
dx1list =[];
ddx1list =[];
dy1list = [];
ddy1list = [];
dx2list = [];
ddx2list = [];
dy2list = [];
ddy2list = [];
for i = t
    ti = mod(i,T);
    %if i == T
    %    break
    %end
    if ti<=T/4
        y1 = -16*S*ti^3/T^3+12*S*ti^2/T^2-S/2;
        x1 = -128*(H1-h)*ti^3/T^3+48*(H1-h)*ti^2/T^2-H1; 
        dy1 = (24*S*ti)/T^2 - (48*S*ti^2)/T^3;
        ddy1 = (24*S)/T^2 - (96*S*ti)/T^3;
        dx1 = (2*ti*(48*H1 - 48*h))/T^2 - (3*ti^2*(128*H1 - 128*h))/T^3;
        ddx1 = (2*(48*H1 - 48*h))/T^2 - (6*ti*(128*H1 - 128*h))/T^3;

        x1list = [x1list;x1];
        y1list = [y1list;y1];
        dx1list = [dx1list;dx1];
        ddx1list = [ddx1list;ddx1];
        dy1list = [dy1list;dy1];
        ddy1list = [ddy1list;ddy1];
    elseif T/4<ti && ti<T/2
        y1 = -16*S*ti^3/T^3+12*S*ti^2/T^2-S/2;
        x1 = 128*(H1-h)*ti^3/T^3-144*(H1-h)*ti^2/T^2+48*(H1-h)*ti/T+4*h-5*H1;
        dx1 = (48*H1 - 48*h)/T - (2*ti*(144*H1 - 144*h))/T^2 + (3*ti^2*(128*H1 - 128*h))/T^3;
        ddx1 = (6*ti*(128*H1 - 128*h))/T^3 - (2*(144*H1 - 144*h))/T^2;
        dy1 = (24*S*ti)/T^2 - (48*S*ti^2)/T^3;
        ddy1 = (24*S)/T^2 - (96*S*ti)/T^3;

        x1list = [x1list;x1];
        y1list = [y1list;y1];
        dx1list = [dx1list;dx1];
        ddx1list = [ddx1list;ddx1];
        dy1list = [dy1list;dy1];
        ddy1list = [ddy1list;ddy1];
    else
        y2 = 16*S*ti^3/T^3-36*S*ti^2/T^2+24*S*ti/T-4*S-S/2;
        dy2 = (24*S)/T + (48*S*ti^2)/T^3 - (72*S*ti)/T^2;
        ddy2 = (96*S*ti)/T^3 - (72*S)/T^2;
        x2 = -H1;
        dx2 = 0;
        ddx2 = 0;
        x2list = [x2list;x2];
        y2list = [y2list;y2];
        dx2list = [dx2list;dx2];
        ddx2list = [ddx2list;ddx2];
        dy2list = [dy2list;dy2];
        ddy2list = [ddy2list;ddy2];
    end
end
%%
figure
plot([x1list;x2list],[y1list;y2list],'o')
figure
plot(x1list,'r-')
hold on 
plot(dx1list,'b-')
plot(ddx1list,'g-')
%%
save('ope_3order.mat','dt','T','x1list','x2list','dx1list','dx2list','ddx1list','ddx2list','y1list',"y2list","dy1list","dy2list","ddy1list","ddy2list")
%%

