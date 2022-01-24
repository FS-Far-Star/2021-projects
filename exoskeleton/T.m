function T = T(theta1,theta2,theta3,theta4,theta5,theta6)
%Rotz(theta)*Transz(d)*Transx(a)*Rotx(alpha)
A1=Rotz(theta1)*Transz(0)*Transx(0)*Rotx(-pi/2);
A2=Rotz(theta2-pi/2)*Transz(0)*Transx(0)*Rotx(-pi/2);
A3=Rotz(theta3+pi/2)*Transz(0.3109)*Transx(0)*Rotx(-pi/2);
A4=Rotz(theta4)*Transz(0)*Transx(0)*Rotx(pi/2);
A5=Rotz(theta5+pi/2)*Transz(0.2635)*Transx(0)*Rotx(pi/2);
A6=Rotz(theta6+pi/2)*Transz(0)*Transx(0.1)*Rotx(0);
T=A1*A2*A3*A4*A5*A6;
end

