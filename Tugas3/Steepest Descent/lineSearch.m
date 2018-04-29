 function [a] = lineSearch(x, a, p)
   f_a = f(x + a*p)
   alpha = 0.33;
   direction = -0.333;
   while(norm(f_a,2) > 0.00001)
     a = a + alpha * direction
     f_a = f(x + a*p)
   end;
end;