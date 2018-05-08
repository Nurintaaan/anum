function [res] =  delta_function_b(x)
    y(1) = (4 * pi * x(1)) + (2 * pi * x(2)) + (2 * x(3) * pi * x(1) * x(2));
    y(2) = (2 * pi * x(1)) + (x(3) * pi * x(1).^2);
    y(3) = (pi * x(1).^2 * x(2)) - 400;
    res = y';
end