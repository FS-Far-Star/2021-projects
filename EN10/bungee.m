function dy = bungee(t,y)
dy = zeros(2,1);
F1 = 500;
k0 = 1;
k1 = 50;
L = 10;
g = 9.8;
M = 70;
dy(1) = y(2);% dy(1)=dx/dt=v;y(1)=x;dy(2)=dv/dt;y(2)=v
if y(1)<L
    dy(2) = g;
else
    dy(2) = g - (F1*(1-exp(-k0*(y(1)-L)))+k1*(y(1)-L))/M;
end
end