function dy = disease_no_control(t,y)
dy = zeros(3,1);
dy(1) = -10.^-6*y(1)*y(2);
dy(2) = 10.^-6*y(1)*y(2)-0.1*y(2);
dy(3) = 0.1*y(2);
end