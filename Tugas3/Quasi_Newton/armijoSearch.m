function a = armijoSearch(f, x, a, p)
    sigma = 0.1;
    beta = 0.1;
    g = grad(f, x);
    f_a = f(x);
    new_f = f(x + a*p);
    while((new_f - f_a)/a > sigma*g'*p && a > 0)
      a = a * beta;
      new_f = f(x + a*p);
    endwhile;
end;