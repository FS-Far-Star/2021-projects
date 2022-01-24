function dy = rocket(t,y)
dy = zeros(4,1);
Cd = 0.3;
rho = 1.22;
A = 0.25*pi*(7.5/100).^2;
w = 200;
K = 7*10.^-6;
Fg = 1.5;
M = Fg/9.8;
V = sqrt(y(3).^2+y(4).^2);
Fm = K*w*V*Cd;
Fd = Cd*0.5*rho*V.^2*A;
dy(1) = y(3);%y(1)=x;dy(1)=v_x=y(3)
dy(2) = y(4);%y(2)=y;dy(2)=v_y=y(4)
dy(3) = -(Fd*y(3)+Fm*y(4))/(M*V);%dy(3)=dvx/dt
dy(4) = (Fm*y(3)-Fd*y(4))/(M*V)-Fg/M;%dy(4)=dvy/dt
end