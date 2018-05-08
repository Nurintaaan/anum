% Broyden–Fletcher–Goldfarb–Shanno
function B = bfgs(B, deltaX, Y)
    N = length(deltaX);
    a = deltaX * Y';
    b = Y' * deltaX;
    c = Y * deltaX';
    d = deltaX * deltaX';
    B_old = B;
    if b > 0
      B = (eye(N) - a/b)' * B * (eye(N) - c/b) + d/b;
    endif;
    % Skip update if divisor is close to zero
    if abs(b) <= 1e-8
      B = B_old;
    endif;
end;
