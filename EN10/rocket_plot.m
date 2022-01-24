Mp = 2100000;
Md = 730000;
T = 37000000;
Isp = 360;
g = 9.8;
M_dot = T/(Isp*g);
end_time = Mp/M_dot;
[t,y] = ode45(@rocket,[0 150],[0 0 Mp+Md]);
plot(t,y(:,1),'r-');figure;
plot(t,y(:,2),'b-');figure;
plot(t,y(:,3),'g-');
end_time
end_height = y(end,1)
end_velocity = y(end,2)
end_mass = y(end,3)