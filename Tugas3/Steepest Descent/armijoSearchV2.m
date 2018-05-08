function [a] = armijoSearchV2(f, grad, x, a , p)
  BETA = 0.1;
  TAU =  0.5;
  
  i = 0;
  while(f(x + a * p) > f(x) + a * BETA * grad(x,f)' * p)
    a = a * TAU;
    i = i + 1;
  end;
end;