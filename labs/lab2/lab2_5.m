x = [1; 1.6; 2.2; 2.8; 3.4; 4; 4.6; 5; 6];
f = [8; 44; 23; 45; 39; 16; 29; 18; 20];

plot(x, f, "o")
title("f(x)")

xx = 1:0.001:6;
y1 = spline(x, f, xx);
hold on;
plot(x, f, xx, y1);
title("spline")

y2 = pchip(x, f, xx);
hold on;
plot(x, f, xx, y2)
title("pchip")

