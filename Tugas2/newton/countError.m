function countTime()
  
  
  tol= [1e-4, 1e-6, 1e-8, 1e-10, 1e-12];
  
  for k= 1:length(tol)

    % input from exercise
    f = @(x) x.^2 - cos(pi * x);
    fder = @(x)  (2*x) + (pi*sin(pi*x));
    
    % initial x0
    initial = [-1,-0.5,0.3,0.5,1];
    
    time_elapsed= 0;
    for i = 1:length(initial)
      x0 = initial(i);
      [x] = newton(f,fder,x0, tol);
      f(x)
    end;
  end;
end;