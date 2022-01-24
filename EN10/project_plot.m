[t,y] = ode45(@project,[0:0.001:6],[0 0 500]);
plot(t,y(:,1),'r-');
title('Volume of coke vs time');xlabel('time in seconds');ylabel('Volume in ml');figure;
plot(t,y(:,2),'g-');
title('Volume of bubbles vs time');xlabel('time in seconds');ylabel('Volume in ml');figure;
plot(t,y(:,3),'b-');
title('Volume of empty space vs time');xlabel('time in seconds');ylabel('Volume in ml');figure;
plot(t,y(:,1),'r-',t,y(:,1)+y(:,2),'-b',t,y(:,1)+y(:,2)+y(:,3),'g')
title('combined plot');
xlabel('time in seconds');
ylabel('Volume in ml');
legend('Volume of coke','Volume of coke+bubbles','Total volume')