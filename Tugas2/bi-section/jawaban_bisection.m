function jawaban_bisection() 
  tol = 0.00000001;
  % soal 1a
  % input from exercise
  f1 = @(x) x.^3 + (2 * x.^2) + (10*x) - 20;

  % initial a, b
  a1 = 1.3;
  b1 = 1.4;
  [r1] = bisection_while(f1, a1, b1, tol)
  
  % soal 1b
  % input from exercise
  f2 = @(x) x.^x - 2;

  % initial x0
  a2 = 1.5;
  b2 = 1.6;
  [r2] = bisection_while(f2, a2, b2, tol)
 
  % soal 1c
  % input from exercise
  f3 = @(x) 10*exp(-x) * sin(2* pi * x) - 2;

  % initial a, b
  a3 = 0.2;
  b3 = 0.3;
  [r3] = bisection_while(f3, a3, b3, tol)

  % soal 1d
  % input from exercise
  f4 = @(x) x.^4 - (6*x.^3) + (12*x.^2) - (10*x) + 3;

  % initial a, b
  a4 = 2.5;
  b4 = 3.5;
  [r4] = bisection_while(f4, a4, b4, tol)
  
  % soal 1e
  % input from exercise
  f5 = @(x) x.^2 - cos(pi * x);
  
  % initial a, b
  a5 = 0.4;
  b5 = 0.5;
  [r5] = bisection_while(f5, a5, b5, tol)
  
end