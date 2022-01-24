[t,y] = ode45(@RCR_circuit,[0:0.0005:0.25],[0]);
plot(t,y(:,1),'r')

