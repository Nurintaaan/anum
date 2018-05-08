% Broyden–Fletcher–Goldfarb–Shanno
function B = bfgs(B, deltaX, Y)
    N = length(deltaX);
    a = Y' * B * Y;
    b = deltaX' * Y;
    c = deltaX * deltaX';
    d = deltaX * Y' * B;
    e = B * Y * deltaX';
    B_old = B;
    
    if b > 0
      B = B_old + (eye(N) + a/b)*(c/b) - (d + e)/b;
    endif;
end;