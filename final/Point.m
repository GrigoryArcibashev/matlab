classdef Point
    %   Класс точки
    %   Класс точки: (x, y) - вещественные числа
    
    properties
        X
        Y
    end
    
    methods
        function obj = Point(x, y)
            obj.X = x;
            obj.Y = y;
        end
    end
end

