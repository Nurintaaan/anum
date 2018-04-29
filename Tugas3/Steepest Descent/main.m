% pkg load symbolic;
% syms x y

% Soal 1 - STEEPEST DESCENT
% =========================
%
% a) 𝑓(𝑥, 𝑦) = 0.5𝑥^2 + 2.5𝑦^2, dengan tebakan awal (𝑥, 𝑦) = (1,2)
  tol = 1e-6 ;
  %f = @(x,y) sym(1)/2 * x.^2 + sym(5)/2 * y.^2;
  %initial = [1,2]';
  
  %g(1) = diff(f,x);
  %g(2) = diff(f,y);
  
  % g = function_handle(g);
  
  %steepestDescent(initial, tol);
  

% b) Fungsi luas permukaan tabung dengan syarat volumenya adalah 400 satuan isi dengan tebakan awal (𝑟,𝑡, 𝜆) = (1,1, −0.5)
  
  % f = @(x) 2 * phi * x(1) * (x(1) * x(2))
  % g = @(x) phi * x(1).^2 * x(2) - 400
  
  %L = @(x) 2 * pi * x(1) * (x(1) * x(2)) + x(3) * (pi * x(1).^2 * x(2) - 400);
  initial = [1,1,-0.5]';  
  
  steepestDescent(initial, tol);
% c) Griewank function
  %t = [1,2,3,4,5];
  %a = 0; b = 1;
  %temp = [-400, -200, 200, 400];
  
  %for index = 1: length(8.^t)
  %  if(mod(index,4) == 0)
  %    idx = 4;
  %  else
  %    idx = mod(index,4);
  %  end;
  %end;
  
  %for index = 1: length(8.^t)    
  %  x(index) = temp(idx);
  %  n = t(index); 
  %  for i=1:n; 
  %    sum = sum + (x(i).^2/4000);
  %  end;
  %  for i=1:n; 
  %    mul = @(x) mul * cos(x(i)/ sqrt(i));
  %  end;
  %  f = @(x) 1 + sum(x) - mul(x)
  % end;
  
  % f = @(x,y) arrayfun(@(t) g(t,y), x);