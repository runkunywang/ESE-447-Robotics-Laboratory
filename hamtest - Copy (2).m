%Initialize Variables

%simulated data
%time = Hamiltonian(:,1);
%v = Hamiltonian(:,2);
%q1 = Hamiltonian(:,3);
%q1d = Hamiltonian(:,4);
%q2 = Hamiltonian(:,5);
%q2d = Hamiltonian(:,6);

%actual data
time = realActualData(:,1);
v = realActualData(:,2);
q1 = realActualData(:,3);
q1d = realActualData(:,4);
q2 = realActualData(:,5);
q2d = realActualData(:,6);

h1 = (0.5)*q1d.^2;
h2 = (0.5)*((((sin(q2)).^2).*(q1d.^2))+(q2d.^2));
h3 = (cos(q2).*q1d.*q2d);
h4 = 9.816*cos(q2);

h1f = h1 - h1(1);
h2f = h2 - h2(1);
h3f = h3 - h3(1);
h4f = h4 - h4(1);

F1 = zeros(1,10000);
F2 = zeros(1,10000);
for i=2:10000
    F1(i-1) = trapz(time(1:i),q1d(1:i).^2);
    F2(i-1) = trapz(time(1:i),q2d(1:i).^2);
end
F1T = F1';
F2T = F2';

A = [h1f h2f h3f h4f F1T F2T];

d = zeros(1,10000);
for i=2:10000
    d(i-1) = trapz(time(1:i),v(1:i).*q1d(1:i));
end
dT = d';
thetas = pinv(A)*dT

%given theta values
%t1 = 0.0328869;
%t2 = 0.0184263;
%t3 = 0.0184263;
%t4 = 0.0921317;
%t5 = 0.6101446;
%t6 = 0.0096726;

%simulated theta values
%0.0327
%0.0184
%0.0184
%0.0920
%0.6101
%0.0097

%actual station 8
%0.0790
%0.0277
%0.0278
%0.1347
%0.5397
%0.0057

%station 12
%0.0835
%    0.0300
%    0.0291
%   0.1611
%    0.5426
%    0.0118

%station 11
%    0.0802
%    0.0277
%    0.0287
%    0.1248
%    0.5101
%    0.0071

%station 5

%    0.0789
%    0.0291
%    0.0293
%    0.1472
%    0.5420
%    0.0101