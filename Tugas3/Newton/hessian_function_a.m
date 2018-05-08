function [res] = hessian_function_a(x)
    y = zeros(2);
    y(1,1) = x(1);
    y(2,2) = 5*x(2);
    res = y;
end