function newPoint = TRANS0_1(theta1, p)
    point = [p(1);p(2);p(3);1];
    T = [cos(theta1) -sin(theta1) 0 0; sin(theta1) cos(theta1) 0 0; 0 0 1 1; 0 0 0 1];
    newPoint = T*point;
end

