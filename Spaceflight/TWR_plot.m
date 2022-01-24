[t,y] = ode45(@TWR,[0:0.1:100],[0 0]);
figure(1);
plot(t,y(:,1),'r-');
figure(2)
plot(t,y(:,2)/343,'b-');
