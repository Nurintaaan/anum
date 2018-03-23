function [ r ] = bisection_while(f, a, b, tol)
    fa = f(a);
    fb = f(b);
    
    if ( fa == 0 )
      r = a;
      return;
    elseif ( fb == 0 )
      r = b;
      return;
    elseif ( fa * fb > 0 )
      r = 'f(a)*f(b) harus negatif';
    end

    deltac = abs(b - a) / 2;

      while (deltac >= tol)
        c = (a + b)/2;
        fc = f(c);
        
        if ( fc * fa < 0 )
          b = c;
        else
          a = c;
        end
        
        deltac = deltac / 2;
      end
      
      r = c;
      return;
      
    if deltac > tol
        r = 'Divergen';
    end
end