function [fx, gradf] = BFunction(x)
    warning('off', 'all');
    f = 2 * pi * x(1) * (x(1) * x(2));
    g = pi * x(1).^2 * x(2) - 400;
  
    fx = f + x(3) * g;
    
    gradf(1) = (4 * pi * x(1)) + (2 * pi * x(2)) + (2 * x(3) * pi * x(1) * x(2));
    gradf(2) = (2 * pi * x(1)) + (x(3) * pi * x(1).^2);
    gradf(3) = (pi * x(1).^2 * x(2)) - 400;
    gradf = gradf';
   
end;