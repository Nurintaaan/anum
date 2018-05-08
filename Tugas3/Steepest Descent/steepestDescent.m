function [minX] =  steepestDescent(f, grad, initial, tol)
  x = initial;
  k = 0;
  MAX_STEP = 1000;
  while(norm(grad(x, f), 2) > tol)
    % if(k == MAX_STEP) break; end;
    p = -grad(x, f);
    %a = armijoSearch(f, grad, x, 1, p)
    a = armijoSearchV2(f, grad, x, 1, p)
    %a = armijo(    1, x, p, f, grad)
    x = x + a*p
    k = k + 1
  end;
  x, k
end;