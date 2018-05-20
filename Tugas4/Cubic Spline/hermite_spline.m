function [p] = hermite_spline(x, f, df)
  [m, n] = size(x);
  for i = 1:n-1
    xx = linspace(x(i), x(i+1), 10);
    
    y = arrayfun(f,xx);
    dy = arrayfun(df,xx);
  
    % natural endpoint  
    if i == 1
      dy(1) = 0
    end;
  
    if i = n-1
      dy(10) = 0
    end;

    p(i, 1:4) = hermite_interpolate(xx,y, dy);  
  end;

endfunction;