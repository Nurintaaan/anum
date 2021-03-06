% Hermite SubInterval Function
% this function split interval into sub interval and return it into hermite interpolate
% param x : data in the sub interval
% param y : function
% param dy : derivative of the function
% return p : cooficient for hermite interpolation in subinterval
function [p] = hermite_spline(x, f, df)
  [m, n] = size(x);
  for i = 1:n-1
    
    xx = linspace(x(i), x(i+1), 2);
    
    y = arrayfun(f,xx);
    dy = arrayfun(df,xx);
  
    % natural endpoint when s'(xi) = 0
    if i == 1
      dy(1) = 0;
    end;
  
    if i == n-1
      dy(2) = 0;
    end;

    p(i, 1:4) = hermite_interpolate(xx,y, dy);  
  end;

endfunction;