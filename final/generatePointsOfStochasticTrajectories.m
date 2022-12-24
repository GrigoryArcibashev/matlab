function [pointsX, pointsY] = generatePointsOfStochasticTrajectories( ...
    paramB, ...
    startPoint, ...
    quantity,...
    intensity, ...
    h)
    %   Генерирует точки графика стохастической траектории
    pointsX = zeros(1, quantity, 'double');
    pointsY = zeros(1, quantity, 'double');
    pointsX(1, 1) = startPoint.X;
    pointsY(1, 1) = startPoint.Y;
    point = startPoint;
    for i = 2:quantity
        [xInc, yInc] = calcNumericalSchemeRungeKutt(paramB, point, h);
        [w1, w2] = generateIncrementsOfWienerProcesses(h);
        nextX = point.X + xInc + intensity * w1;
        nextY = point.Y + yInc + intensity * w2;
        pointsX(1, i) = nextX;
        pointsY(1, i) = nextY;
        point = Point(nextX, nextY);
    end
end

