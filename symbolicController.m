syms t1 t2 t3 t4 t5 t6 q1 q2 q1d q2d v A B



Cmat = [2*t2*sin(q2)*cos(q2)*q2d -t3*sin(q2)*q2d; -t2*sin(q2)*cos(q2)*q1d 0];
Mmat = [t1+t2*(sin(q2))^2 t3*cos(q2); t3*cos(q2) t2];
V = [v ; 0];
F = [t5*q1d ; t6*q2d];
G = [0 ; -t4*9.81*sin(q2)];
qdd = Mmat^(-1)*((V - Cmat*[q1d ; q2d]) - F - G);

Asym = jacobian(qdd, [q1 q1d q2 q2d]);
 

Asym = simplify(Asym)

A22 = Asym(1,2)
A23 = Asym(1,3)
A24 = Asym(1,4)
A42 = Asym(2,2)
A43 = Asym(2,3)
A44 = Asym(2,4)

B = jacobian(qdd, v)

%%
%t1 = 0.0790;
%t2 = 0.0277;
%t3 = 0.0278;
%t4 = 0.1347;
%t5 = 0.5397;
%t6 = 0.0057;

q1 = 0;
q2 = 0;
q2d = 0;
q1d = 0;

A(1,1) = 0;
A(1,2) = 1;
A(1,3) = 0;
A(1,4) = 0;
A(3,1) = 0;
A(3,2) = 0;
A(3,3) = 0;
A(3,4) = 1;
A(2,1) = 0;
A(4,1) = 0;
A(2,2) = - (t2*(t5 + 2*q2d*t2*cos(q2)*sin(q2)))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) - (2*q1d*t2*t3*cos(q2)^2*sin(q2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2);
A(2,3) = (t2*(q2d^2*t3*cos(q2) - 2*q1d*q2d*t2*cos(q2)^2 + 2*q1d*q2d*t2*sin(q2)^2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) - (t3*cos(q2)*((981*t4*cos(q2))/100 + q1d^2*t2*cos(q2)^2 - q1d^2*t2*sin(q2)^2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) + (t3*sin(q2)*(t2*cos(q2)*sin(q2)*q1d^2 - q2d*t6 + (981*t4*sin(q2))/100))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) - (t2*(2*cos(q2)*sin(q2)*t2^2 + 2*cos(q2)*sin(q2)*t3^2)*(t3*sin(q2)*q2d^2 - 2*q1d*t2*cos(q2)*sin(q2)*q2d + v - q1d*t5))/(t2^2*sin(q2)^2 + t1*t2 - t3^2*cos(q2)^2)^2 + (t3*cos(q2)*(2*cos(q2)*sin(q2)*t2^2 + 2*cos(q2)*sin(q2)*t3^2)*(t2*cos(q2)*sin(q2)*q1d^2 - q2d*t6 + (981*t4*sin(q2))/100))/(t2^2*sin(q2)^2 + t1*t2 - t3^2*cos(q2)^2)^2;
A(2,4) = (cos(q2)*(- 2*q1d*sin(q2)*t2^2 + t3*t6) + 2*q2d*t2*t3*sin(q2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2);
A(4,2) = (cos(q2)*(2*q1d*t2^2*sin(q2)^3 + 2*q1d*t1*t2*sin(q2)) + t3*cos(q2)*(t5 + 2*q2d*t2*cos(q2)*sin(q2)))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2);
A(4,3) = ((t2*sin(q2)^2 + t1)*((981*t4*cos(q2))/100 + q1d^2*t2*cos(q2)^2 - q1d^2*t2*sin(q2)^2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) - ((2*cos(q2)*sin(q2)*t2^2 + 2*cos(q2)*sin(q2)*t3^2)*(t2*sin(q2)^2 + t1)*(t2*cos(q2)*sin(q2)*q1d^2 - q2d*t6 + (981*t4*sin(q2))/100))/(t2^2*sin(q2)^2 + t1*t2 - t3^2*cos(q2)^2)^2 - (t3*cos(q2)*(q2d^2*t3*cos(q2) - 2*q1d*q2d*t2*cos(q2)^2 + 2*q1d*q2d*t2*sin(q2)^2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) + (t3*sin(q2)*(t3*sin(q2)*q2d^2 - 2*q1d*t2*cos(q2)*sin(q2)*q2d + v - q1d*t5))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) + (2*t2*cos(q2)*sin(q2)*(t2*cos(q2)*sin(q2)*q1d^2 - q2d*t6 + (981*t4*sin(q2))/100))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2) + (t3*cos(q2)*(2*cos(q2)*sin(q2)*t2^2 + 2*cos(q2)*sin(q2)*t3^2)*(t3*sin(q2)*q2d^2 - 2*q1d*t2*cos(q2)*sin(q2)*q2d + v - q1d*t5))/(t2^2*sin(q2)^2 + t1*t2 - t3^2*cos(q2)^2)^2;
A(4,4) = -(t1*t6 + t2*(t6*sin(q2)^2 - 2*q1d*t3*cos(q2)^2*sin(q2)) + 2*q2d*t3^2*cos(q2)*sin(q2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2);

%% B matrix

B(1) = 0;
B(2) =  t2/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2)
B(3) = 0;
B(4) = -(t3*cos(q2))/(t1*t2 - t3^2*cos(q2)^2 + t2^2*sin(q2)^2)