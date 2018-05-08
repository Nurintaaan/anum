% STEEPEST DESCENT ALGORITHM
%==============================
% Nur Intan - 1506689093
%
% Input 
% [f]           : function                e.g @c
% [grad]        : gradient function       e.g @grd_c
% [initial]     : initial x               e.g [1, 2, 3]
% [tol]         : stoping tolerance       e.g 1e-4
%
% Output
% [x]     : minimum solution of f(x)
% [k]     : minimum step to find minimum solution
function [x k] =  steepestDescent(f, grad, initial, tol)
  x = initial;
  k = 0;
  while(norm(grad(x, f), 2) > tol)
    p = -grad(x, f);
    a = armijoSearchV2(f, grad, x, 1, p);
    x = x + a*p;
    k = k + 1;
  end;
  x, k
end;