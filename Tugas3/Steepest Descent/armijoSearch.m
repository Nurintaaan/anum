function [a] = armijoSearch(x, a, p)
    sigma = 0.1;
    beta = 0.5;
    g = grad(x)
    f_a = f(x)
    new_f = f(x + a*p)
     while((new_f - f_a)/a > sigma*g'*p)
       a = a * beta;
       new_f = f(x + a*p);
     end;
end;