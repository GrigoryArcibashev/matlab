% TASK 4
x_ = -5:0.1:5;
y_ = -5:0.1:5;
[x, y] = meshgrid(x_, y_);
z = sin(x.^2+y.^2) ./ (x.^2+y.^2);

subplot(2,2,1)
plot3(x, y, z)
title("plot3")

subplot(2,2,2)
mesh(x, y, z)
title("mesh")

subplot(2,2,3)
meshc(x, y, z)
title("meshc")

subplot(2,2,4)
surf(x, y, z)
title("surf")