function dy = RLC_circuit(t,y)
dy = zeros(2,1);
R = 100;
L = 10.^-6;
C = 10.^-10;
f = 10.^6;
V0 = 100;
dy(1) = C*dy(2);% iL
if t<1/10.^6
    dy(2) = (V0*sin(2*pi*f*t)-y(2))/(R*C)-y(1)/C;%VCL
else
    dy(2) = (0-y(2))/(R*C)-y(1)/C;
end
end