[t,y] = ode45(@pendulum,[0 5],[0 0]);
plot(t,y(:,1));figure;
plot(t,y(:,2))