% acuan 
% https://github.com/yyc9268/Numerical_optimization/blob/49639aa66b0f1dd47803110ae47b1083e4217b51/matlab/multivariate_smooth/quasi_newton.m
% modified sesuai kebutuhan soal

function [minX] =  quasiNewton(f, initial, tol, max_iter)
  x = initial;
  k = 0;
  n = length(initial);
  B = eye(n);

  while k < max_iter
    g = grad(f,x)
    % Cek sudah konvergen apa belum
    if abs(g) <= tol
      break
    end
    p = -B * g
    a = directLineSearch(f, x, 1, p)
    x_old = x
    x = x + a*p;    
    g_new = grad(f, x);
    B = bfgs(B, x - x_old, g_new - g)
    k++;
  endwhile
end;

function a = directLineSearch(f, x, a, p)
  f_a = f(x + a*p)
  alpha = 0.33;
  direction = -0.333;
  while norm(f_a,2) > 0.00001
    a = a + alpha * direction
    f_a = f(x + a*p)
  end;
end;