function dy = rocket(t,y)
dy = zeros(2,1);
table = table2array(readtable('CD Test.CSV'));

burnout_time = 30;

if t>=burnout_time
    thrust = 0;
else
    thrust = 10000;
end

flow_rate = 4; %kg/s, cooling water?
initial_mass = 210; %kg

% mass
if t < burnout_time
    mass = initial_mass - flow_rate * t;
else 
    mass = initial_mass - flow_rate * burnout_time;
end 
% air density
    % constants
p0 = 101325; %pa
T0 = 288.15; %K
g = 9.80665; 
L = 0.0065; %K/m
R = 8.31446; 
M = 0.0289652; 
    %rho
rho = p0*M/(R*T0)*(1-L*y(1)/T0).^(g*M/(R*L)-1);

% drag
    %approximate v
A = 0.07068567; %m^2
v_air = 343;
v_close = round(y(2)/343*100)/100; %*100/100 to get 0.01
index = round(v_close*100);
if index <= 0
    index = 1; %in case random crap happens
end
    %extract cd
cd = table(index+1,3);
    %now drag
F_drag = 0.5*cd*rho*(y(2).^2)*A;

% gravitational force
M = 5.972 * 10.^24;
G = 6.67408*10.^-11; 
R = 6.3781*10.^6; 
F_grav = G * mass * M/((y(1)+R).^2);

%total acceleration
acc = (thrust-F_drag-F_grav)/mass;

dy(1) = y(2); %y(1) = y, dy(1) = y(2) = y_dot
dy(2) = acc; %dy(2) = y(3) = y_dot_dot
end