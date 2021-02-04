function hamilton = fcn(V, x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
timeVar = Hamiltonian.time;
t1 = 0.00628;
t2 = 0.001143;
t3 = 0.00381;
t4 = 0.01905;
q1 = x(1);
q1d = x(2);
q2 = x(3);
q2d = x(4);

h1 = ((1/2)*t1*q1d^2);
h2 = (t2*(1/2)*((sin(q2))^2)*(q1d^2));
h3 = t3*cos(q2)*q1d*q2d;
h4 = t4*9.816*cos(q2);
H = [h1 h2 h3 h4];

hamilton = null;
end

