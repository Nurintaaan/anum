function [res] = hessian_function_b(x)
    y = zeros(3);
    y(1,1) = 4*pi + 2*pi*x(2)*x(3);
    y(1,2) = 2*pi + 2*pi*x(1)*x(3);
    y(1,3) = 2*pi*x(1)*x(2);
    y(2,1) = y(1,2);
    y(2,3) = pi*x(1)^2;
    y(3,1) = y(1,3);
    y(3,2) = y(2,3);
    res = y;
end