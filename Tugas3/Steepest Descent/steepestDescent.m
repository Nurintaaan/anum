function [minX] =  steepestDescent(f, grad, initial, tol)
  x = initial
  k = 0
  while(norm(grad(x), 2) > tol )
    p = -grad(x)
    a = armijoSearch(f, grad, x, 1, p)    
    x = x + a*p;
    k = k + 1;
  end;
  x, k
end;