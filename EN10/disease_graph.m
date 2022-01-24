[t,y] = ode45(@disease_social_distance,[0 100],[10.^6 10.^3 0]);
plot(t,y(:,1),t,y(:,2),t,y(:,3))