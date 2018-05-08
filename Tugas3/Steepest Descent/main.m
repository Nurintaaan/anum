% Soal 1 - STEEPEST DESCENT
% =========================
%
% a) 𝑓(𝑥, 𝑦) = 0.5𝑥^2 + 2.5𝑦^2, dengan tebakan awal (𝑥, 𝑦) = (1,2)
  arrtol = [1e-4, 1e-6, 1e-8, 1e-10, 1e-12];
  initial = [1,2]';
  
  function y = a(x)
    y = 0.5 * x(1).^2 + 2.5 * x(2).^2;  
  end;

  function y = grad_a(x)
    y(1) = x(1);
    y(2) = 5 * x(2);
    y = y';
  end;

  a = []; 
  % tol,iter , time, sol
  %for i = 1:length(arrtol)
    %tol = arrtol(i)
    %tic;
      %[sol iter] = steepestDescent(@a, @grad_a, initial, tol);
    %elapsed_time = toc;
    %a =[a; [tol iter time sol']];
  %end;
  
  %csvwrite("soal1a.csv",a);
% b) Fungsi luas permukaan tabung dengan syarat volumenya adalah 400 satuan isi dengan tebakan awal (𝑟,𝑡, 𝜆) = (1,1, −0.5)
  

  initial = [1,1,-0.5]';  
  
  b = []
  function L = b(x)
     f = 2 * pi * x(1) * (x(1) * x(2));
     g = pi * x(1).^2 * x(2) - 400;
  
     L = f + x(3) * g;
  end;

  function y = grad_b(x)
    y(1) = (4 * pi * x(1)) + (2 * pi * x(2)) + (2 * x(3) * pi * x(1) * x(2));
    y(2) = (2 * pi * x(1)) + (x(3) * pi * x(1).^2);
    y(3) = (pi * x(1).^2 * x(2)) - 400;
    y = y';
  end;
   
   %b = [];
   %for i = 1:length(arrtol)
    %tol = arrtol(i)
    %tic;
     % [sol iter] = steepestDescent(@b, @grad_b, initial, tol);
    %elapsed_time = toc;
    %b =[b; [tol iter time sol']];
  %end;
  %csvwrite("soal1b.csv",b);  
  %steepestDescent(@b, @grad_b, initial, tol);
  
% c) Griewank function
  t = [1,2,3];
  a = 0; b = 1;
  initial = [-400, -200, 200, 400];
  
  function y = c(x)
    n = length(x);
    sum = 0;
    mul = 1;
    
    for i = 1:n 
      sum = sum + ((x(i).^2)/4000);
      mul = mul * (cos(x(i)/ sqrt(i)));
    end;
    
    y = 1 + sum -  mul;
  end;
  
  function y = grad_c(x)
    n = length(x);
    for d = 1 : n
      sum = 0;
      mul = 1;
      for i = 1:n 
        if(i == d) 
          sum = sum + ((x(i))/2000);
          mul = mul * 1/sqrt(i) * (sin(x(i)/ sqrt(i)));
        else
          mul = mul * (cos(x(i)/ sqrt(i)));
        end;
      end;
      y(d) = sum +  mul;
    end;
    y = y';
  end;
  
  c = [];
  for index = 1 : length(t)
    initial = [initial initial]
   for i = 1:length(arrtol)
    tol = arrtol(i)
    tic;
      [sol iter] = steepestDescent(@c, @grad_c, initial, tol);
    elapsed_time = toc;
    c =[c; [index tol iter time sol']];
  end;
  csvwrite("soal1c.csv",c);  
  end;
  %steepestDescent(@c, @grad_c, initial', tol)
  