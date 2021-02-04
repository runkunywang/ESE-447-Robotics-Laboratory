function task7(thetas)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    %base robot
    theta1 = thetas(1);
    theta2 = thetas(2);
    
    %base
    x = [0; 0; 0];
    y = [0; 0; 0];
    z = [0; 0; -10];

    %Link1
    p1 = [0; 0;0];
    p2 = [0;0;-1];
    p3 = [0; 6; -1];
    p4 = [0;6;0];
    p5 = [0;8;0];

    %Link2
    p1_2 = [0; 0; 0];
    p2_2 = [0; 12; 0];
    
    %Link 2 transformation
    p10_2 = TRANS0_2(theta1,theta2,p1_2);
    p20_2 = TRANS0_2(theta1, theta2, p2_2);
    %Transformation from Frame 1 to Frame 0
    p10_1 = TRANS0_1(theta1, p1);
    p20_1 = TRANS0_1(theta1, p2);
    p30_1 = TRANS0_1(theta1, p3);
    p40_1 = TRANS0_1(theta1, p4);
    p50_1 = TRANS0_1(theta1, p5);
  
    plot3([x(1) y(1) z(1) p10_1(1) p20_1(1) p30_1(1) p40_1(1) p50_1(1) p10_2(1) p20_2(1)], [x(2) y(2) z(2) p10_1(2) p20_1(2) p30_1(2) p40_1(2) p50_1(2) p10_2(2) p20_2(2)], [x(3) y(3) z(3) p10_1(3) p20_1(3) p30_1(3) p40_1(3) p50_1(3) p10_2(3) p20_2(3)])
    grid on
    axis ([-15 15 -15 15 -15 15])
end

