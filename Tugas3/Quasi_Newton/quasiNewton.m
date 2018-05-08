% acuan 
% https://github.com/yyc9268/Numerical_optimization/blob/49639aa66b0f1dd47803110ae47b1083e4217b51/matlab/multivariate_smooth/quasi_newton.m
% modified sesuai kebutuhan soal

function minX = quasiNewton(f, initial, tol, max_iter)
  x = initial;
  k = 0;
  n = length(initial);
  B = eye(n);

  while k < max_iter
    g = grad(f,x);
    % Cek sudah konvergen apa belum
    if abs(g) <= tol
      break;
    end;
    
    p = -B * g;
    a = armijoSearch(f, x, 1, p);
    x_old = x;
    x = x + a*p;    
    g_new = grad(f, x);
    B = bfgs(B, x - x_old, g_new - g);
    k++;
  endwhile;
  minX = x
end;