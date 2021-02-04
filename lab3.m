%Task1
x = [0; 0; 0];
y = [0; 0; 0];
z = [0; 0; -10];

%Task3
p1 = [0; 0;0];
p2 = [0;0;-1];
p3 = [0; 6; -1];
p4 = [0;6;0];
p5 = [0;8;0];

%Task4
p1_2 = [0; 0; 0];
p2_2 = [0; 12; 0];


theta1 = 0;
theta2 = 0;
while(true)
p11_2 = TRANS1_2(theta2, p1_2);
p21_2 = TRANS1_2(theta2, p2_2);

p11_0 = TRANS0_1(theta1, p11_2);
p21_0 = TRANS0_1(theta1, p21_2);
p10_1 = TRANS0_1(theta1, p1);
p20_1 = TRANS0_1(theta1, p2);
p30_1 = TRANS0_1(theta1, p3);
p40_1 = TRANS0_1(theta1, p4);
p50_1 = TRANS0_1(theta1, p5);

%p11_2 = TRANS1_2(theta1, theta2, p1_2);
%p21_2 = TRANS1_2(theta1, theta2, p2_2);

plot3(x,y,z)
hold on
plot3([p10_1(1);p20_1(1);p30_1(1);p40_1(1);p50_1(1)],[p10_1(2);p20_1(2);p30_1(2);p40_1(2);p50_1(2)],[p10_1(3);p20_1(3);p30_1(3);p40_1(3);p50_1(3)])
plot3([p11_0(1); p21_0(1)], [p11_0(2); p21_0(2)], [p11_0(3); p21_0(3)]) 
grid on
axis square
theta1 = theta1+30;
theta2 = theta2+15;
pause(1);
end