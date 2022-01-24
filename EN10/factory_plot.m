[t,y] = ode45(@factory,[0 24],[0 3000 0]);
Nd_dot=zeros(77,1);
Nd_dot(:,1)=y(:,2)*0.03-70;
plot(t,y(:,1),'r-',t,y(:,2),'b-',t,y(:,3),'g-',t,Nd_dot(:,1),'*-')
%red:Ni
%blue:NR
%green:Nd_dot