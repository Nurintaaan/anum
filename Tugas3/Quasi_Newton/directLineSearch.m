function a = directLineSearch(f, x, a, p, maxIter)
  % Hitung x^1 = x^0 + alpha0.p^0
  alpha = 1;
  x_new = x + alpha*p;
  k = 0;
  f_alpha = f(x_new);
  
  direction = -0.33;
  
  % cek memenuhi kriteria solusi minimal;
  while k < maxIter
    a = a + alpha * p;
    f_a = f(x + alpha*p);
  end;
  a = alpha;
end;
