function jawaban() 
  % soal 1a
  % input from exercise
  f = @(x) x.^3 + (2 * x.^2) + (10*x) - 20;
  fder = @(x) (3* x.^2) + (4*x) + 10;

  % initial x0
  x0 = 0;
  [x] = newton(f,fder,x0)
  
  % soal 1b
  % input from exercise
  f = @(x) x.^x - 2;
  fder = @(x) x.^x * (1 + log(x));

  % initial x0
  x0 = 2;
  [x] = newton(f,fder,x0)
 
  % soal 1c
  % input from exercise
  f = @(x) 10*exp(-x) * sin(2* pi * x) - 2;
  fder = @(x) 20*exp(-x)*pi*cos(2 *pi*x)- (10*exp(-x)*sin(2*pi*x));

  % initial x0
  x0 = 2;
  [x] = newton(f,fder,x0)

  % soal 1d
  % input from exercise
  f = @(x) x.^4 - (6*x.^3) + (12*x.^2) - (10*x) + 3;
  fder = @(x)  (4*x.^3) - (18*x.^2) + (24*x) - 10;

  % initial x0
  x0 = 2;
  [x] = newton(f,fder,x0)
  
  % soal 1e
  % input from exercise
  f = @(x) x.^2 - cos(pi * x);
  fder = @(x)  (2*x) + (pi*sin(pi*x));
  
  % initial x0
  x0 = 2;
  [x] = newton(f,fder,x0)
  
end;