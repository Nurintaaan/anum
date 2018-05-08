% Soal 3 - QUASI NEWTON
% =========================
%
% a) 𝑓(𝑥, 𝑦) = 0.5𝑥^2 + 2.5𝑦^2, dengan tebakan awal (𝑥, 𝑦) = (1,2)
  arrtol = [1e-4, 1e-6, 1e-8, 1e-10, 1e-12];
  initial = [1,2]';
  
  function y = a(x)
    y = 0.5 * x(1).^2 + 2.5 * x(2).^2;  
  end;
  
  for i = 1:length(arrtol)
    tol = arrtol(i)
    tic; 
    minX = quasiNewton(@a, initial, tol, 10);
    minXA = minX;
    minXA
    exec_timeA = toc;
    exec_timeA
  endfor;
  

% b) Fungsi luas permukaan tabung dengan syarat volumenya adalah 400 satuan isi dengan tebakan awal (𝑟,𝑡, 𝜆) = (1,1, −0.5)
  

  initial = [1,1,-0.5]';  
  
  function L = b(x)
     f = 2 * pi * x(1) * (x(1) * x(2));
     g = pi * x(1).^2 * x(2) - 400;
  
     L = f + x(3) * g;
  end;
  for i = 1:length(arrtol)
    tol = arrtol(i)
    tic; 
    minX = quasiNewton(@b, initial, tol, 10);
    minXB = minX;
    minXB
    exec_timeB = toc;
    exec_timeB
  endfor;
  
  
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

  for index = 1 : length(t)
    initial = [initial initial]
    for i = 1:length(arrtol)
      tol = arrtol(i)
      tic;
      minX = quasiNewton(@b, initial, tol, 10);
      elapsed_time = toc;
      minXC = minX;
    endfor;
  endfor;