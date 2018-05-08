function [res] = hessian_function_a(x)
    y = zeros(2);
    y(1,1) = 1;
    y(2,2) = 5;
    res = y;
end