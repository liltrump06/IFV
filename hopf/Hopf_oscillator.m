[t,x,~] = ode45(@vdp_forHopf1,linspace(0,10,1000),[1 0]');
figure
plot(t,x(:,1),t,x(:,2))
figure
plot(x(:,1),x(:,2))

[t,x,~] = ode45(@vdp_forHopf2,linspace(0,10,1000),[1 0]');
figure
plot(t,x(:,1),t,x(:,2))
figure
plot(x(:,1),x(:,2))