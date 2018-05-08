% Broyden–Fletcher–Goldfarb–Shanno
function B = bfgs(B, deltaX, Y)
    N = length(deltaX);
    a = deltaX * Y';
    b = Y' * deltaX;
    c = Y * deltaX';
    d = deltaX * deltaX';
    B_old = B;
    B = (eye(N) - a/b)' * B * (eye(N) - c/b) + d/b;
    % Skip update if divisor is close to zero
    if abs(divisor) <= 1e-8 || abs(divisor) < 0.5*norm(s)*norm((y_k - B*s))
      B = B_old;
    end
end
