function dy = kkrs(t,y)
dy = zeros(2,1);
g = 10;
l = 10;
dy(1)=y(2);%y(1)=theta, dy(1)=y(2)=theta_dot
dy(2) = -g/l*sin(y(1)); %dy(2) = theta_dot_dot
end