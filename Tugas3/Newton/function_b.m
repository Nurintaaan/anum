function [res] = function_b(x)
    f = 2 * pi * x(1) * (x(1) * x(2));
    g = pi * x(1).^2 * x(2) - 400;
  
    res = f + x(3) * g;
end