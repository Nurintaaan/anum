function [minX] =  steepestDescent(initial, tol)
  x = initial;
  k = 0;
  while(norm(grad(x), 2) > tol )
    p = -grad(x)
    a = armijoSearch(x, 1, p)    
    x = x + a*p;
    k = k + 1;
  end;
  x, k

end;

function [a] = armijoSearch(x, a, p)
    sigma = 0.1;
    beta = 0.5;
    g = grad(x);
    f_a = f(x)
    new_f = f(x + a*p)
     while((new_f - f_a)/a > sigma*g'*p)
       a = a * beta;
       new_f = f(x + a*p);
     end;
end;

function y = f(x)
  % soal 1 
  % y = 0.5 * x(1).^2 + 2.5 * x(2).^2;
  
  % soal 2
  y = (2 * pi * x(1) * (x(1)) + (x(2)) + x(3) * (pi * x(1).^2 * x(2) - 400));
  
end;

function y = grad(x)
  %soal 1
  % y(1) = x(1);
  % y(2) = 5 * x(2);
  
  %soal 2
  y(1) = (4 * pi * x(1)) + (2 * pi * x(2)) + (2 * x(3) * pi * x(1) * x(2));
  y(2) = (2 * pi * x(1)) + (x(3) * pi * x(1).^2);
  y(3) = (pi * x(1).^2 * x(2)) - 400;
  
  y = y';
end;