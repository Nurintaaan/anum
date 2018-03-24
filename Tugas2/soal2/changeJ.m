function [j] = changeJ(x, y, a, b, c, d)
  
  j(1,1) = a(x,y);
  j(1,2) = b(x,y);
  j(2,1) = c(x,y);
  j(2,2) = d(x,y);
  end
