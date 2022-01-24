function dy = disease_social_distance(t,y)
dy = zeros(3,1);
dy(1) = -10.^-6*y(1)*y(2)/(1+5*y(3));
dy(2) = 10.^-6*y(1)*y(2)/(1+5*y(3))-0.1*y(2);
dy(3) = 0.1*y(2);
end