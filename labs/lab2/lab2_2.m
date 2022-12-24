% TASK 2
x = -2*pi:0.01:2*pi;
y1 = cos(x).^2;
y2 = sin(x).^2;

p1 = plot(x, y1, "-");
hold on;
p2 = plot(x, y2, "--");

p1.LineWidth = 1;
p2.LineWidth = 3;

l = legend("cos^2", "sin^2");
l.Location = "northeastoutside";

xlabel("x", FontSize=16);
ylabel("y", FontSize=16);

title("Plot 2", FontSize=20)