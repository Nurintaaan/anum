function [ r ] = bisection(f, a, b, tol, iter_max)
    fa = f(a);
    fb = f(b);
    
    if ( fa == 0 )
      r = a;
      return;
    elseif ( fb == 0 )
      r = b;
      return;
    elseif ( fa * fb > 0 )
      error( 'f(a)*f(b) harus negatif' );
    end

    deltac = abs(b - a) / 2;
    
    for k = 0:iter_max
        c = (a + b)/2;
        fc = f(c);

        if ( deltac <= tol && abs(fc) <= tol )
            r = c;
            return;
        elseif ( fc * fa < 0 )
            b = c;
        else
            a = c;
        end
        
        deltac = deltac / 2;
    end
    
    if deltaX > tol && abs(fx) > tol
        warning('Warning: Divergen');
    end
end