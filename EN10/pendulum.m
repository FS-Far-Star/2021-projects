function dy = pendulum(t,y)
dy = zeros(2,1);
M = 2;
L = 0.372;
rho = 1000;
d = 0.005;
Vj = 5;
g = 9.8;
I = 1/3*M*L*L;
dy(1)=y(2);%y(1)=theta
dy(2)=-L/(2*I)*M*g*sin(y(1))-1/(4*I)*pi*d.^2*rho*Vj*(Vj-L*y(2))*L;
end
