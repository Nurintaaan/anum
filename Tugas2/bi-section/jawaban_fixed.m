function jawaban_fixed() 
  % set tolerance
    tolerance = [0.0001, 0.000001, 0.00000001, 0.0000000001, 0.000000000001];

  % soal 1a
    % input from exercise
    f = @(x) x.^3 + (2 * x.^2) + (10*x) - 20;

    % initial a, b
    initiala = [1.3, -2, 1, 100, 0];
    initialb = [1.4, 2, 4, -100, 5];
    for i = 1:length(initiala)
      a = initiala(i);
      b = initialb(i);
      fprintf('================================================================================================\n');
      fprintf('For function 1a and initial a, b = %d, %d \n', a, b);
      for j =  1:length(tolerance)
        tol = tolerance(j); 
        [r] = bisection_while(f,a,b,tol);
        fprintf('The root is %d with tolerance = %d \n',r,tol);
      end;
      fprintf('================================================================================================\n \n');
    end;
    
  % soal 1b
    % input from exercise
    f = @(x) x.^x - 2;
    
    % initial a, b
    initiala = [-1, 1, -100, -8, -50];
    initialb = [2, 3, 100, 9, 240];
    for i = 1:length(initiala)
      a = initiala(i);
      b = initialb(i);
      fprintf('================================================================================================\n');
      fprintf('For function 1b with initial a, b = %d, %d \n', a, b);
      for j =  1:length(tolerance)
        tol = tolerance(j);
        [r] = bisection_while(f,a,b,tol);
        fprintf('The root is %d with tolerance = %d \n',r,tol);
      end;
      fprintf('================================================================================================\n \n');
    end;
    
    % soal 1c
    % input from exercise
    f = @(x) 10*exp(-x) * sin(2* pi * x) - 2;

    %% initial a, b
    initiala = [1.3, -3.8, -2.8, -1.8, 0.2];
    initialb = [1.4, -3, -2, -1, 0.8];
    for i = 1:length(initiala)
      a = initiala(i);
      b = initialb(i);
      fprintf('================================================================================================\n');
      fprintf('For function 1c with initial a, b = %d, %d \n', a, b);
      for j =  1:length(tolerance)
        tol = tolerance(j);
        [r] = bisection_while(f,a,b,tol);
        fprintf('The root is %d with tolerance = %d \n',r,tol);
      end;
      fprintf('================================================================================================\n \n');
    end;
    
      % soal 1d
    % input from exercise
    f = @(x) x.^4 - (6*x.^3) + (12*x.^2) - (10*x) + 3;
    
    % initial a, b
    initiala = [-3.3, -5, 0, 2, -2.5];
    initialb = [1.4, 2, 2, 4, 2.5];
    for i = 1:length(initiala)
      a = initiala(i);
      b = initialb(i);
      fprintf('================================================================================================\n');
      fprintf('For function 1d with initial a, b = %d, %d \n', a, b);
      for j =  1:length(tolerance)
        tol = tolerance(j);
        [r] = bisection_while(f,a,b,tol);
        fprintf('The root is %d with tolerance = %d \n',r,tol);
      end;
      fprintf('================================================================================================\n \n');
    end;
    
    % soal 1e
    % input from exercise
    f = @(x) x.^2 - cos(pi * x);
    
    % initial a, b
    initiala = [-1, 0.2, -0.1, -0.6, 0.3];
    initialb = [0, 2, 1, -0.4, 5];
    for i = 1:length(initiala)
      a = initiala(i);
      b = initialb(i);
      fprintf('================================================================================================\n');
      fprintf('For function 1e with initial a, b = %d, %d \n', a, b);
      for j =  1:length(tolerance)
        tol = tolerance(j);
        [r] = bisection_while(f,a,b,tol);
        fprintf('The root is %d with tolerance = %d \n',r,tol);
      end;
      fprintf('================================================================================================\n \n');
    end;

end;