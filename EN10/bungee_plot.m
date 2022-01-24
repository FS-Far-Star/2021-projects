[t,y] = ode45(@bungee,[0:0.01:30],[0 0]);
plot(t,y(:,1),'r-');figure;
plot(t,y(:,2),'b-');
