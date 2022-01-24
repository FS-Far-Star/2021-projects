[t,y] = ode45(@repair_shop,[0:0.1:24],[1 1]);
plot(t,y(:,1),'r-',t,y(:,2),'b-')
%red:NR
%blue:MR
