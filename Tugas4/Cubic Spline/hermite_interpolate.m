% Hermite Interpolation Function
% param x : data in the sub interval
% param y : function
% param dy : derivative of the function
% return p : cooficient for hermite interpolation in subinterval
function [p] = hermite_interpolate(x, y, dy)
  [m,n] = size(x);
  
  % hermite with degree = 3
  A = [x.^3; x.^2; x; ones(1,n)]';
  dA = [3*x.^2; 2*x; ones(1,n); zeros(1,n)]';
  
  A = [A ; dA];
  b = [y' ; dy'];

  
  p = A \ b;
  p = p';

endfunction;