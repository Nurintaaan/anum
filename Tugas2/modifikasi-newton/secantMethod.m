% function Secant Method (Modified Newton)
% @param :  x0, x1 initial guess x 
%           f function x
%           tol tolerance value
% @return : equation roots
function [root_secant] = secantMethod(x0, x1, f, tol)
  x=[x0; x1]; 
  fx=f(x);
  
  while norm(fx(end)) >tol
      x(end+1) = x(end) - fx(end) * (x(end-1)-x(end)) / ( fx(end-1)-fx(end) );
      fx(end+1) = f(x(end));
  end

  root_secant = x(end)
end