function dy = RCR_circuit(t,y)
dy = zeros(1,1);
R1=10.^6;
R2=10.^6;
C=10.^-9;
V0=100;
f=60;
dy = (V0*sin(2*pi*f*t)+2*pi*f*C*R2*cos(2*pi*f*t))/(C*(R1+R2));%V1
end