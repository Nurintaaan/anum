 function soal1a()
  % set tolerance
  tol = 0.0001;

  % soal 1a
    % input from exercise
    f = @(x) x.^3 + (2 * x.^2) + (10*x) - 20;
    fder = @(x) (3* x.^2) + (4*x) + 10;

    % initial x0
    initial = [0, 1, 2, 100, -5];
    x0 = initial(5);
    [x] = newton(f,fder,x0, tol);
 end;