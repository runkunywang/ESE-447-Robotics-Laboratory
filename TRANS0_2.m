function x = TRANS0_2(theta1, theta2, p)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
newPoint = [p(1);p(2);p(3);1];
T1 = [cos(theta1) -sin(theta1) 0 0; sin(theta1) cos(theta1) 0 0; 0 0 1 1; 0 0 0 1];
T2 = [cos(theta2) -sin(theta2) 0 0; 0 0 -1 8; sin(theta2) cos(theta2) 0 0; 0 0 0 1];
x = T1*T2*newPoint;
end

