% newton rhapson method
% input :
%   f     : function
%   fder  : derivative of f   
%   x0    : initial value for f
%   tol   : tolerance
% output :
%   x     : root of f
function [x0] = newton(f,fder, x0, tol)  
  % difference to check convergence
  diff = 1;
  
  while(diff > tol || abs(feval(f,x0)) > tol)
    if(feval(fder,x0) == 0)
      error("f'(x) = 0, can't convergence");
      break
    endif
    x1 = x0 - (feval(f,x0)/feval(fder,x0));
    diff = abs(x1-x0);
    x0 = x1;
    %fprintf('x = %d \n', x0);
  end;  
  
  %fprintf('solution x = %d with f(x) = %d \n', x0, feval(f,x0));
end;