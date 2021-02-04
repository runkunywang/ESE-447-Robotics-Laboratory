function state = fcn(q, prevState)
q1 = q(1);
q2 = q(2);
q2d = q(3);
q2 = q2 - pi;


if q2 < 0
    q2 = -q2;
end
if q2 > 2*pi
    q2 = mod(q2, 2*pi);
end
%Zone 1 to Zone 3
if prevState == 1 && (q2 > (8*pi)/9 && q2 < (10*pi)/9)
    %Zone 3
    state = 3;
%Zone 3 to Zone 2
elseif prevState == 3 && (q2 < (8*pi)/9 || q2 > (10*pi)/9)
    %Zone 2
    state = 2; 
%Zone 2 to Zone 1
elseif prevState == 2 && (q2 < (pi/18) && q2 < (35*pi/18)) && (abs(q2d) < 1)
    %Zone 1
    state = 1; 
else state = prevState;
end

end