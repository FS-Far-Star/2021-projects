[t,y] = ode45(@RLC_circuit,[0 4/10.^6],[0 0]);
L = 10.^-6;
y(:,3) = L * y(:,2);
plot(t,y(:,2),'r-');figure;
plot(t,y(:,3),'b-');
