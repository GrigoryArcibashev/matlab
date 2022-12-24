% TASK 3
x = -2*pi:0.01:2*pi;
y1 = sin(2*x);
y2 = cos(x/2);

subplot(2,1,1)
plot(x, y1)
title("y = sin(2x)");

subplot(2,1,2)
plot(x, y2)
title("y = cos(x/2)");