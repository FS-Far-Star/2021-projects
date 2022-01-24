function dy = repair_shop(t,y)
dy = zeros(2,1);
c1 = 0.5; 
c2 = 0.5;
kR = 2;
a1 = 0.3;
a2 = 0.3;
a3 = 0.075;
dy(1) = c1+c2-kR*y(1);%NR
dy(2) = a1*c1+a1*c2-a2-a3*kR*y(1);%MR
end