function [a] = armijoSearch(f, grad, x, a, p)
    sigma = 0.1;
    beta = 0.1;
    g = grad(x, f);
    f_a = f(x);
    new_f = f(x + a*p);
     while((new_f - f_a)/a > sigma*g'*p)
       a = a * beta;
       new_f = f(x + a*p);
     end;
end;