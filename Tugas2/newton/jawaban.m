function jawaban() 
  % set tolerance
  tol = 0.00000000001;

  % soal 1a
    % input from exercise
    f = @(x) x.^3 + (2 * x.^2) + (10*x) - 20;
    fder = @(x) (3* x.^2) + (4*x) + 10;

    % initial x0
    initial = [0, 1, 2, 100, -5];
    for i = 1:length(initial)
      x0 = initial(i);
      fprintf('========================================================\n');
      [x] = newton(f,fder,x0, tol);
      fprintf('The root for 1a is %d with initial value = %d \n',x, x0);
      fprintf('======================================================== \n \n');
    end;
  
  % soal 1b
    % input from exercise
    f = @(x) x.^x - 2;
    fder = @(x) x.^x * (1 + log(x));
    
    % initial x0
    initial = [1,1.5,0.5,1.5,10];
    for i = 1:length(initial)
      x0 = initial(i);
      fprintf('========================================================\n');
      [x] = newton(f,fder,x0, tol);
      fprintf('The root for 1b is %d with initial value = %d \n',x, x0);
      fprintf('======================================================== \n \n');
    end;
 
  % soal 1c
    % input from exercise
    f = @(x) 10*exp(-x) * sin(2* pi * x) - 2;
    fder = @(x) 20*exp(-x)*pi*cos(2 *pi*x)- (10*exp(-x)*sin(2*pi*x));

    % initial x0
    initial = [-1.5,-2,-0.5,0,1];
    for i = 1:length(initial)
      x0 = initial(i);
      fprintf('========================================================\n');
      [x] = newton(f,fder,x0, tol);
      fprintf('The root for 1c is %d with initial value = %d \n',x, x0);
      fprintf('======================================================== \n \n');
    end;

  % soal 1d
    % input from exercise
    f = @(x) x.^4 - (6*x.^3) + (12*x.^2) - (10*x) + 3;
    fder = @(x)  (4*x.^3) - (18*x.^2) + (24*x) - 10;

    % initial x0
    initial = [-10,-5,0,5,10];
    for i = 1:length(initial)
      x0 = initial(i);
      fprintf('========================================================\n');
      [x] = newton(f,fder,x0, tol);
      fprintf('The root for 1d is %d with initial value = %d \n',x, x0);
      fprintf('======================================================== \n \n');
    end;
  
  % soal 1e
    % input from exercise
    f = @(x) x.^2 - cos(pi * x);
    fder = @(x)  (2*x) + (pi*sin(pi*x));
    
    % initial x0
    initial = [-1,-0.5,0.3,0.5,1];
    for i = 1:length(initial)
      x0 = initial(i);
      fprintf('========================================================\n');
      [x] = newton(f,fder,x0, tol);
      fprintf('The root for 1e is %d with initial value = %d \n',x, x0);
      fprintf('======================================================== \n \n');
    end;
  
end;