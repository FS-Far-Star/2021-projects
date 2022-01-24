max =15;
y = [max 0];
end_time = 2500;
t = [0:1:end_time];
break_times = 0;
for i = 1:end_time
    y(i+1,1)=y(i,1)+0.005*(max-y(i,1));
    y(i+1,2)=y(i,2)+rand*0.15-(10-y(i,2))/800;
    if y(i+1,2)>y(i+1,1)
        y(i+1,1)=y(i+1,1)-1;
        y(i+1,2)=y(i+1,2)/2;
        break_times = break_times+1;
    end
end
plot(t,y(:,1),t,y(:,2));
break_times