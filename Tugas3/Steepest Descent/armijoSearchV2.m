% ARMIJO BACKTRACKING ALGORITHM
%==============================
% Nur Intan - 1506689093
%
% Input 
% [f]     : function              e.g @c
% [grad]  : gradient function     e.g @grad_c
% [a]     : search step, usually  e.g 1
% [p]     : search direction      e.g 3
%
% Output
% [a]     : final minimum step
function [a] = armijoSearchV2(f, grad, x, a , p)
  BETA = 0.1;
  TAU =  0.5;
  
  i = 0;
  while(f(x + a * p) > f(x) + a * BETA * grad(x,f)' * p);
    a = a * TAU;
    i = i + 1;
  end;
end;