% TASK 1
% 1.1
t = 0:0.01:2*pi;
x = cos(2.*t).*cos(cos(10.*t));
y = sin(2.*t).*sin(sin(10.*t));
subplot(2,2,1)
plot(x, y)
title("Plot 1.1");

% 1.2
t = -8*pi:0.01:8*pi;
r = exp(sin(t)) - 2*cos(4.*t) + sin((2.*t - pi)/24) .^ 5;
subplot(2,2,2)
polarplot(t, r)
title("Plot 1.2");