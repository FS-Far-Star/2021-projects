function A=A(theta,d,a,alpha)
A=Rotz(theta)*Transz(d)*Transx(a)*Rotx(alpha);
end