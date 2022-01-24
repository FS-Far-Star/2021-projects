[t,y] = ode45(@problem,[0:0.001:6],[0 0]);
plot(t,y(:,1),'r-');figure;
plot(t,y(:,2),'g-');