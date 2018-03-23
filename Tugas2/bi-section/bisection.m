function [ r ] = bisection()
    % Check that that neither end-point is a root
    % and if f(a) and f(b) have the same sign, throw an exception.
    % input from exercise
  f = @(x) x.^2 + (5 * x) + 6;
  N = 10000000000000;
  tol = 0.00000000001;
  a = -3;
  b = 4;

  if ( feval(f,a) == 0 )
	  r = a;
	  return;
  elseif ( feval(f,b) == 0 )
	  r = b;
	  return;
  elseif ( feval(f,a) * feval(f,b) > 0 )
    a
    b
    feval(f,a)
    feval(f,b)
    error( 'f(a) and f(b) do not have opposite signs' );
  end

    % We will iterate N times and if a root was not
    % found after N iterations, an exception will be thrown.

    for k = 1:N
        % Find the mid-point
        c = (a + b)/2;

        % Check if we found a root or whether or not
        % we should continue with:
        %          [a, c] if f(a) and f(c) have opposite signs, or
        %          [c, b] if f(c) and f(b) have opposite signs.

        if ( feval(f,c) == 0 )
            r = c;
            return;
        elseif ( feval(f,c) * feval(f,a) < 0 )
            b = c;
        else
            a = c;
        end

        % If |b - a| < eps_step, check whether or not
        %       |f(a)| < |f(b)| and |f(a)| < eps_abs and return 'a', or
        %       |f(b)| < eps_abs and return 'b'.

        if ( b - a < tol )
            if ( abs( feval(f,a) ) < abs( feval(f,b) ) && abs( feval(f,a) ) < tol )
                r = a;
                return;
            elseif ( abs( feval(f,b) ) < tol )
                r = b;
                return;
            end
        end
    end

    error( 'the method did not converge' );
end