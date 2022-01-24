[t,y] = ode45(@baseball,[0:0.001:7.2],[0 1 50*cos(pi/4) 50*sin(pi/4)]);
plot(t,y(:,1),t,y(:,2),'r-');figure;
plot(t,y(:,3),t,y(:,4),'r');figure;
plot(t,y(:,2));hold on;
yline(1);
