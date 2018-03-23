% fungsi untuk mengdekomposisi matrix A menjadi matrix Q R
% @input : fungsi f, nilai a dan b dengan f(a)*f(b)<0,
% example input: f = @(x,y) (x^2 + y^2 + x*y);
% x = 1;
% y = 10;
% z = f(x,y)
% @input : TOL(batas toleransi) 10^-t, t = 4,6,8,10,12

function [root, iter, converged] = bisection(f, a, b, tol, iter_max)
% Calculates the root of an equation by Bisection method
% Inputs:
%         f: Function f(x)
%         a: Lower limit
%         b: Upper limit
%       tol: Tolerance
%  iter_max: Maximum number of iterations
% Outpus:
%      root: Root value
%      iter: Used iterations
% converged: Found the root

    fa = f(a);
    fb = f(b);

    if fa * fb > 0
        error('Error: The function does not change signal at the ends of the given interval.');
    end

    deltaX = abs(b - a) / 2;

    for iter = 0:iter_max
        x = (a + b) / 2;

        fx = f(x);
        fprintf('iter: %.3d\t a: %.4f\t fa: %.4f\t b: %.4f\t fb: %.4f\t x: %.4f\t fx: %.4f\t deltaX: %.4f\n', iter, a, fa, b, fb, x, fx, deltaX);

        if deltaX <= tol && abs(fx) <= tol
            break;
        end

        if fa * fx > 0
            a = x;
            fa = fx;
        else
            b = x;
        end

        deltaX = deltaX / 2;
    end

    root = x;

    if deltaX <= tol && abs(fx) <= tol
        converged = 1;
    else
        warning('Warning: The method did not converge.');
        converged = 0;
    end
end
