function dy = project(t,y)
dy = zeros(3,1);
beta = 0.644;
alpha = 0.01;
r = 250;
f = 2.813;
dy(1) = beta*y(3)+f*y(2)/r-alpha*beta*y(3);%V of liquid
dy(2) = r*alpha*beta*y(3)-f*y(2);%V of bubbles
dy(3) = -dy(1)-dy(2);%empty space
end