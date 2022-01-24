end_time = 10;  beta = 0.644;   alpha = 0.01;   r = 250;    f = 2.813;
max_volume = 500;
reaction_time = 0.1;    %reaction time human needs,or in other words, the amount of delay
step_size = 0.001; 
t = [0:1:end_time/step_size];
y = [0 0]; %initial V_coke,V_bubbles in order
for i = 1:1:end_time/step_size
    empty_space(i) = max_volume - y(i,1) - y(i,2);
    if i <= reaction_time/step_size    %set everything to zero to prepare for delay
        y(i+1,1)=0;
        y(i+1,2)=0;
    else
        random_change = (rand-0.5)*0.1; %modeling that human cannot precisely control muscle
        if y(i,1)<10    %when there is a little liquid, harder collision, alpha is larger(*1.5)
            change_1 = (beta*empty_space(i-reaction_time/step_size)+f*y(i-reaction_time/step_size,2)/r-1.5*alpha*beta*empty_space(i-100))*step_size+random_change;
                    % delay is achieved by i-reaction_time/step_size
            change_2 = 1.5*r*alpha*change_1-f*y(i,2)*step_size;%1.5 multiplier in both changes
        else
            change_1 = (beta*empty_space(i-reaction_time/step_size)+f*y(i-reaction_time/step_size,2)/r-alpha*beta*empty_space(i-100))*step_size+random_change;
            change_2 = r*alpha*change_1-f*y(i,2)*step_size;%normal condition
        end
        if change_1 < 0 %make sure pour in rate is not negative
            change_1 =0;
        end
        if y(i,2) < 0   %make sure bubble volume is not negative
            change_2 =0;
        end
        y(i+1,1) = change_1+y(i,1);
        y(i+1,2) = change_2+y(i,2);
    end
end
plot(t/1000,y(:,1),'r-',t/1000,y(:,1)+y(:,2),'-b');
title('Advanced model plot');xlabel('time in seconds');ylabel('Volume in ml');
legend('Volume of coke','Volume of coke+bubbles','Total volume')