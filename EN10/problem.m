function dy = problem(t,y)
dy = zeros(2,1);
beta = 0.644;
f = 2.813;
dy(1) = 0.99*beta*(500-y(1)-y(2))+(f/250)*y(2);%V of coke
dy(2) = 2.5*beta*(500-y(1)-y(2))-f*y(2);%V of bubbles
end