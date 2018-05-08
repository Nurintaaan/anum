% acuan 
% https://github.com/yyc9268/Numerical_optimization/blob/49639aa66b0f1dd47803110ae47b1083e4217b51/matlab/multivariate_smooth/quasi_newton.m
% modified sesuai kebutuhan soal

function [minX] =  quasiNewton(f, X, initial, tol, max_iter)
  x = initial;
  k = 0;
  n = length(X);
  B = eye(n);

  while k < max_iter
    g = grad(f,X)
    % Cek sudah konvergen apa belum
    if abs(g) <= tol
      break
    end
    k = k + 1
    p = -B * g
    a = directLineSearch(x, 1, p)
    x_old = x
    x = x + a*p;    
    B = bfgs(n, X, tol, tol, tol, max_iter, f)
  end;
  x, k

end;

function [a] = directLineSearch(x, a, p)
  k = 0
  f_a = f(x + a*p)
  alpha = 0.33;
  direction = -0.333;
  while norm(f_a,2) > 0.00001
    a = a + alpha * direction
    f_a = f(x + a*p)
  end;
end;

function y = f(x)
  % soal 1 
  % y = 0.5 * x(1).^2 + 2.5 * x(2).^2;
  
  % soal 2
  y = (2 * pi * x(1) * (x(1)) + (x(2)) + x(3) * (pi * x(1).^2 * x(2) - 400));
  
end;

function [g]=grad(f, X)
  n = length(X);
  g = zeros(n, 1);
  h=sqrt(eps);
  for k=1:n
    x1=X;
    x1(k)=x1(k)+h*i;
    g(k)=imag(f(x1))/h;
  end
end  