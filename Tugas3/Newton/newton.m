function [res, iter, time] = newton(x, A, b, tol)
    tic;
    x_new = x';
    residu = norm(b(x_new));
    iter = 0;
    while residu > tol
        v = A(x_new) \ -b(x_new);
        x_new = x_new + v;
        residu = norm(b(x_new));
        iter = iter + 1
    end
    res = x_new;
    time = toc;
end
