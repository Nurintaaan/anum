% newton rhapson method
% input :
%   f     : function
%   a     : initial value of a  
%   b     : initial value of b
%   tol   : tolerance
% output :
%   x     : root of f
function [ r ] = bisection_while(f, a, b, tol)
    fa = f(a);
    fb = f(b);
    
    %a is the root
    if ( fa == 0 )
      r = a;
      return;
    %b is the root
    elseif ( fb == 0 )
      r = b;
      return;
    %f(a) and f(b) have the same sign
    elseif ( fa * fb > 0 )
      error('f(a)*f(b) harus negatif');
    end
    
    %to check if the range of b and a is greater or smaller to tolerance
    deltac = abs(b - a) / 2;

      while (deltac >= tol)
        c = (a + b)/2;
        fc = f(c);
        
        %initiate new value of a and b
        if ( fc * fa < 0 )
          %the range now will be from a to c
          b = c;
        else
          %the range now will be from c to b
          a = c;
        end
        
        %update range of b and a
        deltac = deltac / 2;
      end
      
      r = c;
      return;
      
    %root could not be found
    if deltac > tol
        r = 'Fungsi tidak konvergen';
    end
end