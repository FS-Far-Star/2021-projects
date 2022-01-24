function dy = disease_migration(t,y)
dy = zeros(3,1);
dy(1) = -10.^-6*y(1)*y(2)/(1+5*y(3))+(1-0.01)*1000;
dy(2) = 10.^-6*y(1)*y(2)/(1+5*y(3))-0.1*y(2)+0.01*1000;
dy(3) = 0.1*y(2);
end