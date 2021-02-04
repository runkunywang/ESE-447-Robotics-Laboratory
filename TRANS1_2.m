function [ newPoint ] = TRANS1_2(theta2,p)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
newP = [p(1);p(2);p(3);1];
T = [cos(deg2rad(theta2)) -sin(deg2rad(theta2)) 0 0; 0 0 -1 8; sin(deg2rad(theta2)) cos(deg2rad(theta2)) 0 0; 0 0 0 1];
newPoint = T*newP;
end

