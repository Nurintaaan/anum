function [res] = delta_function_a(x)
    y(1) = x(1);
    y(2) = 5 * x(2);
    res = y';
end