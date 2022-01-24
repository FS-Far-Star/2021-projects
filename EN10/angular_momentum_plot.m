[t,y] = ode23(@angular_momentum,[0:0.0001:3],[pi pi 0 0]);
plot(t,y(:,1),'r',t,y(:,2),'b');figure;
[t,y] = ode23(@angular_momentum,[0:0.0001:3],[pi -pi 0 0]);
plot(t,y(:,1),'r',t,y(:,2),'b');figure;
[t,y] = ode23(@angular_momentum,[0:0.0001:3],[pi 0 0 0]);
plot(t,y(:,1),'r',t,y(:,2),'b');