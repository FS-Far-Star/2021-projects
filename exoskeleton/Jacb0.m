function J=Jacb0(theta)

theta1=theta(1);
theta2=theta(2);
theta3=theta(3);
theta4=theta(4);
theta5=theta(5);
theta6=theta(6);
theta7=theta(7);

A1 = [cos(theta1)           -sin(theta1)*cos(-pi/2)         sin(theta1)*sin(-pi/2)          0; 
      sin(theta1)           cos(theta1)*cos(-pi/2)         -cos(theta1)*sin(-pi/2)            0;
      0                    sin(-pi/2)              cos(-pi/2)                 0.34;
      0                     0              0                 1];
    
A2 = [cos(theta2)           -sin(theta2)*cos(pi/2)         sin(theta2)*sin(pi/2)          0; 
      sin(theta2)           cos(theta2)*cos(pi/2)         -cos(theta2)*sin(pi/2)            0;
      0                    sin(pi/2)              cos(pi/2)                 0;
      0                     0              0                 1];
  
A3 = [cos(theta3)           -sin(theta3)*cos(pi/2)         sin(theta3)*sin(pi/2)          0; 
      sin(theta3)           cos(theta3)*cos(pi/2)         -cos(theta3)*sin(pi/2)           0;
      0                    sin(pi/2)              cos(pi/2)                 0.4;
      0                     0              0                 1];
   
A4 = [cos(theta4)           -sin(theta4)*cos(-pi/2)         sin(theta4)*sin(-pi/2)         0; 
      sin(theta4)           cos(theta4)*cos(-pi/2)         -cos(theta4)*sin(-pi/2)            0;
      0                    sin(-pi/2)              cos(-pi/2)                0;
      0                     0              0                 1];
  
A5 =  [cos(theta5)           -sin(theta5)*cos(-pi/2)         sin(theta5)*sin(-pi/2)          0; 
      sin(theta5)           cos(theta5)*cos(-pi/2)         -cos(theta5)*sin(-pi/2)            0;
      0                    sin(-pi/2)              cos(-pi/2)                 0.4;
      0                     0              0                 1];
   
A6 = [cos(theta6)           -sin(theta6)*cos(pi/2)         sin(theta6)*sin(pi/2)          0*cos(theta6); 
      sin(theta6)           cos(theta6)*cos(pi/2)         -cos(theta6)*sin(pi/2)            0*sin(theta6);
      0                    sin(pi/2)              cos(pi/2)                 0;
      0                     0              0                 1];  
  
A7 = [cos(theta7)           -sin(theta7)*cos(0)         sin(theta7)*sin(0)          0; 
      sin(theta7)           cos(theta7)*cos(0)         -cos(theta7)*sin(0)            0;
      0                    sin(0)              cos(0)                 0.126;
      0                     0              0                 1];
  
T01 = A1;
T02 = T01 * A2;
T03 = T02 * A3;
T04 = T03 * A4;
T05 = T04 * A5;
T06 = T05 * A6; 
T07 = T06 * A7; %末端姿态和位置

%%%% 计算雅克比
z0 = [0 0 1]';
z1 = T01(1:3, 3);
z2 = T02(1:3, 3);
z3 = T03(1:3, 3);
z4 = T04(1:3, 3);
z5 = T05(1:3, 3);
z6 = T06(1:3, 3);

o0 = [0 0 0]';
o1 = T01(1:3,4);
o2 = T02(1:3,4);
o3 = T03(1:3,4);
o4 = T04(1:3,4);
o5 = T05(1:3,4);
o6 = T06(1:3,4);
o7 = T07(1:3,4);

j1 = cross(z0,(o7- o0));
j2 = cross(z1,(o7 - o1));
j3 = cross(z2,(o7 - o2));
j4 = cross(z3,(o7 - o3));
j5 = cross(z4,(o7 - o4));
j6 = cross(z5,(o7 - o5));
j7 = cross(z6,(o7 - o6));

% 雅克比矩阵
J = [j1 j2 j3 j4 j5 j6 j7 ];





