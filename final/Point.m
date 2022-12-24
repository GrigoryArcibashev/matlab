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
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

