function dy = factory(t,y)
dy = zeros(3,1);
dy(1) = 0.0015*y(2)+66.5-0.01*y(1);
dy(2) = 0.01*y(1)+7000-0.03*y(2);
dy(3) = 0.03*y(2)-70;
end
%y1 = NR, y2 = NI,y3=Nd
