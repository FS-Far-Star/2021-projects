function [I] = ical(a,b,w,h,rho)
%ICAL: calculate moment of inertia of...
%a circular disk with a cylindrical rim
I_whole = pi/2*rho*h*a.^4;
I_empty = pi/2*rho*(h-b)*(a-w).^4;
I = I_whole - I_empty;
end

