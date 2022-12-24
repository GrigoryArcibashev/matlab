fprintf('\n\n\n--- Solution of Lab №1 ---\n\n')
% TASK 1
% 1.1
x = 5.5;
y = exp(1) ^ (-x) / sqrt(exp(1) ^ (-x) + 1) - x;
fprintf('1.1: %f\n', y)

% 1.2
x = -10;
y = sin(x^3) * log(tan(abs(x)));
fprintf('1.2: %f\n\n', y)

% TASK 2
Z1 = 3 + 2i;
Z2 = -12.45 + 2.7*exp(1) - 3i;
% 2.1
z = real(Z1) + imag(Z2);
fprintf('2.1: ReZ1 + ImZ2 = %f\n', z)
z = abs(Z1 / Z2);
fprintf('\t abs(Z1 / Z2) = %f\n', z)

% 2.2
z = Z1 * Z2;
angle = atan(imag(z) / real(z));
fprintf('2.2: %f\n', angle)

% 2.3
z = (conj(Z1) + abs(Z2)) / imag(Z1);
fprintf('2.3: %f\n\n', z)

% TASK 3
A = [3 -1 7; 2 4 0; 1 2 -1];
B = [1; 2; -2];
C = [-3; 1];
D = A * B * C';
fprintf('3: matrix D is\n')
disp(D)
fprintf('   transposed matrix A is\n')
disp(A ^ (-1))

% TASK 4
A = [8 -3 5; 5 -2 3; 3 -1 3];
B = [2; 1; -1];
fprintf('4: solution is\n')
disp(linsolve(A, B))

% TASK 5
syms x
f = 1 / (cos(x)^2 * (3*tan(x) + 1)^2);
s1 = limit(f, x, 3*pi/4);
fprintf('5.1: %f\n\n', s1)
s2 = diff(f, x);
fprintf('5.2: ')
disp(s2)
s3 = int(f, x);
fprintf('5.3: ')
disp(s3)
s4 = int(f, x, pi/2, 0);
fprintf('5.4: ')
disp(s4)
