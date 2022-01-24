function dy = rocket(t,y)
dy = zeros(3,1);
T = 37000000;
Mp = 2100000;
Md = 730000;
Isp = 360;
g = 9.8;
Cd = 0.0075;
D = 10;
H = 110;
As = pi*D*H;
rho0 = 1.2;
Vj = Isp*g;
M_dot = T/(Isp*g);
dy(1) = y(2);% dy(1)=dy/dt=v;y(1)=y;dy(2)=dv/dt;y(2)=v
dy(2) = (M_dot*Vj-0.5*rho0*Cd*As*dy(1)*dy(1)*exp(-y(1)/7300))/y(3)-g;
if y(3) > Md% mass
    dy(3) = -M_dot;
else 
    dy(3) = 0;
    disp('no fuel');
end
end