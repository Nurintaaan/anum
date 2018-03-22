function [x0] = soal1a()
  % input from exercise
  f = @(x) x.^3 + (2 * x.^2) + (10*x) - 20;
  fder = @(x) (3* x.^2) + (4*x) + 10;

  % initial x0
  x0 = 0;

  % set tolerance
  tol = 0.00000000001;
  
  % difference to check convergence
  diff = 1;
  
  while(diff > tol || feval(f,x0) > tol)
    x1 = x0 - (feval(f,x0)/feval(fder,x0))
    diff = abs(x1-x0)
    x0 = x1;
  end;  
  
  x0
  feval(f,x0)
end;