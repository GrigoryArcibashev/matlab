accuracy = 0.001;
a = 1; b = 2;
while true
    x = (a + b) / 2;
    val = f(x);
    if abs(val) < accuracy
        fprintf("x ~ %f\n", x)
        break;
    elseif val > 0
        b = x;
    else
        a = x;
    end
end

function [res] = f(x)
res = x * (x^2 - log10(x)) - 2;
end