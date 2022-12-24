function [point] = calculateEquilibriumPoint(paramB)
    %   Вычисляет координаты точки равновесия
    point = Point(paramB, paramB / (paramB * paramB + 0.1));
end
