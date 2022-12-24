function [xInc, yInc] = calcNumericalSchemeRungeKutt( ...
    paramB, ...
    point, ...
    h)
    %   Численная схема метода Рунге — Кутта четвертого порядка
    K1 = h * f(point.X, point.Y);
    L1 = h * g(point.X, point.Y, paramB);
    K2 = h * f(point.X + K1 / 2, point.Y + L1 / 2);
    L2 = h * g(point.X + K1 / 2, point.Y + L1 / 2, paramB);
    K3 = h * f(point.X + K2 / 2, point.Y + L2 / 2);
    L3 = h * g(point.X + K2 / 2, point.Y + L2 / 2, paramB);
    K4 = h * f(point.X + K3, point.Y + L3);
    L4 = h * g(point.X + K3, point.Y + L3, paramB);
    xInc = (K1 + 2 * K2 + 2 * K3 + K4) / 6;
    yInc = (L1 + 2 * L2 + 2 * L3 + L4) / 6;
end
