function [minX] =  quasiNewton(initial, tol)
  x = initial;
  k = 0;
  [m,n] = size()
  B = I[m,n]
  while norm(grad(x), 2) > tol 
    p = -grad(x,B)
    a = directLineSearch(x, 1, p)    
    x = x + a*p;
    k = k + 1;
    B = bfgs(N, x, gradToler, fxToler, DxToler, MaxIter, myFx)%cek ini far
  end;
  x, k

end;

function [a] = directLineSearch(x, a, p)
  k = 0
  f_a = f(x + a*p)
  alpha = 0.33;
  direction = -0.333;
  while norm(f_a,2) > 0.00001
    a = a + alpha * direction
    f_a = f(x + a*p)
  end;
end;

function y = f(x)
  % soal 1 
  % y = 0.5 * x(1).^2 + 2.5 * x(2).^2;
  
  % soal 2
  y = (2 * pi * x(1) * (x(1)) + (x(2)) + x(3) * (pi * x(1).^2 * x(2) - 400));
  
end;

function y = grad(B,x)
  %soal 1
  % y(1) = x(1);
  % y(2) = 5 * x(2);
  
  %soal 2
  y(1) = (4 * pi * x(1)) + (2 * pi * x(2)) + (2 * x(3) * pi * x(1) * x(2));
  y(2) = (2 * pi * x(1)) + (x(3) * pi * x(1).^2);
  y(3) = (pi * x(1).^2 * x(2)) - 400;
  
  y = B*y';
end;

function [b] = bfgs(N, X, gradToler, fxToler, DxToler, MaxIter, myFx)
  %Edit disini