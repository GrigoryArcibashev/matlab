function [w1, w2] = generateIncrementsOfWienerProcesses(h)
    %   генерирует приращения винеровских процессов
    r1 = rand();
    r2 = rand();
    w1 = sqrt(-2 * h * log(r1)) * sin(2 * pi * r2);
    w2 = sqrt(-2 * h * log(r1)) * cos(2 * pi * r2);
end
