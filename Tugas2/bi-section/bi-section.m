% fungsi untuk mengdekomposisi matrix A menjadi matrix Q R
% @input : fungsi f, nilai a dan b dengan f(a)*f(b)<0,
% example input: f = @(x,y) (x^2 + y^2 + x*y);
% x = 1;
% y = 10;
% z = f(x,y)
% @input : TOL(batas toleransi) 10^-t, t = 4,6,8,10,12
% @output : f(x)
function [ r ] = bisection( f, a, b, N, eps_step, eps_abs )
  if ~exist('tolerance')
    tolerance = eps;
  end

  % Exit if a > b
  if a > b
      disp(sprintf('>> Please make sure a < b.\n'))
      break
  end

  % Bisect bounds and approximate root
  n = 1;
  while n <= n_max
      p = (a + b) / 2;

      if (f(p) == 0) || (((b - a)/2) < tolerance)
          solution = sprintf('>> Root = %f\n', p);
          disp(solution);
          break
      end

      n = n + 1;

      % Check if bounds are opposite sign
      if (f(a) * f(p)) > 0
          a = p;
      else
          b = p;
      end
  end

  % If root approximation not found, display error
  if n > n_max
      err = sprintf('>> Bisection Method Failed After  %d  iterations.\n', n_max);
      disp(err);
  end
end
