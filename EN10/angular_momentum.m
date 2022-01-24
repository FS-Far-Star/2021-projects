function dy = angular_momentum(t,y)
dy = zeros(4,1);
K1 = 70;
K2 = 280;
I1 = 6.5361;
I2 = 6.5361;%from 4.2
dy(1) = y(3);%y(1)=theta1
dy(2) = y(4);%y(2)=theta2
dy(3) = (-K1*y(1)+K2*(y(2)-y(1)))/I1;%y(3)=w1
dy(4) = (-K1*y(2)-K2*(y(2)-y(1)))/I2;%y(4)=w2 !!!!!!! minus sign?
end
