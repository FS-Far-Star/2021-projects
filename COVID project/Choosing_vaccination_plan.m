active(1) = 650657;
total_pop = 311000000;
spread_rate = 0.069256674/total_pop;
total(1) = 7283715;
pop(1:90) = 311000000;
pop = pop';
recovery = 0.0295;
t = [1:240];
%case_1 starts
for i = 2:90
    awareness = total(i-1)/total_pop*10;
    daily_spread_rate = spread_rate * (1-awareness) * pop(i);
    daily_increase(i) = daily_spread_rate * active(i-1);
    active(i) = (1-recovery)*active(i-1) + daily_increase(i);
    total(i) = total(i-1) + daily_increase(i);
end
for i = 91:240
    pop(i) = pop(i-1) - 1460000*0.9;
    awareness = total(i-1)/total_pop*10;
    daily_spread_rate = spread_rate * (1-awareness) * pop(i);
    daily_increase(i) = daily_spread_rate * active(i-1);
    active(i) = (1-recovery)*active(i-1) + daily_increase(i);
    total(i) = total(i-1) + daily_increase(i);
end
storage_1 = daily_increase(91:240);case_1_total = total(240)
case_1 = [daily_increase(1:90),storage_1];
%case_2 starts
for i = 91:240
    pop(i) = pop(i-1) - 2000000*0.5;
    awareness = total(i-1)/total_pop*10;
    daily_spread_rate = spread_rate * (1-awareness) * pop(i);
    daily_increase(i) = daily_spread_rate * active(i-1);
    active(i) = (1-recovery)*active(i-1) + daily_increase(i);
    total(i) = total(i-1) + daily_increase(i);
end
storage_2 = daily_increase(91:240);case_2_total = total(240)
case_2 = [daily_increase(1:90),storage_2];
%case_3 starts
for i = 76:240
    pop(i) = pop(i-1) - 2000000*0.5;
    awareness = total(i-1)/total_pop*10;
    daily_spread_rate = spread_rate * (1-awareness) * pop(i);
    daily_increase(i) = daily_spread_rate * active(i-1);
    active(i) = (1-recovery)*active(i-1) + daily_increase(i);
    total(i) = total(i-1) + daily_increase(i);
end
storage_3 = daily_increase(76:240);case_3_total = total(240)
case_3 = [daily_increase(1:75),storage_3];
plot(t,case_1,'-g',t,case_2,'-r',t,case_3,'-b','LineWidth',1)
xlabel('Days (since Oct.1 2020)');ylabel('Daily new cases');
legend('1.46m doses of 90%','2m doses of 50%','2m doses of 50%, start 15 days earlier')
title('Daily new infection v. time')
ax = gca;
ax.FontSize = 20;