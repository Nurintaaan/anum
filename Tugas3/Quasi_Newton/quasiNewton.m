% Reference : https://github.com/yyc9268/Numerical_optimization/blob/49639aa66b0f1dd47803110ae47b1083e4217b51/matlab/multivariate_smooth/quasi_newton.m
% with some modification

function minX = quasiNewton(f, initial, tol, max_iter)
  x = initial;
  k = 0;
  n = length(initial);
  B = eye(n);

  while k < max_iter
    g = grad(f,x);
    
    % Cek sudah konvergen apa belum
    if abs(g) <= tol
      break
    end
    
    % a) Hitung p^k = -B^kg^k.
    % Return vektor p (arah pencarian)
    p = -B * g;
    
    % b) Hitung panjang langkah (solusi dari min f(x0 + alpha.p^k)) menggunakan line search.
    % Return alpha 
    alpha = directLineSearch(f, x, 1, p);
    
    % c) Iterasi x^(k+1) = x^k + alphak.p^k
    % Return x^k (tebakan baru)
    x_old = x;
    x = x + a*p;
    
    % d) Hitung B^(k+1) dengan BFGS
    % Return B^k+1 (matriks peremajaan)
    g_new = grad(f, x);
    deltaX = x - x_old;
    Y = g_new - g;
    B = bfgs(B, deltaX, Y);
    
    % Iterasi
    k++;
  endwhile;
  minX = x
end;

% Direct Line Search
% Param f : fungsi
% x : tebakan awal
% p : tebakan arah pencarian
% alpha : tebakan panjang langkah
% 
function a = directLineSearch(f, x, p, alpha)
  % Hitung x^1 = x^0 + alpha0.p^0
  x_new = x + alpha.p;
  
  f_alpha = f(x_new);
  
  % cek memenuhi kriteria solusi minimal;
  while norm(f_a,2) > 0.00001
    a = a + alpha * direction;
    f_a = f(x + a*p);
  end;
end;

% Broyden–Fletcher–Goldfarb–Shanno
% Param B : matriks identitas ukuran x
% deltaX : selisih tebakan1 dan tebakan0
% Y : selisih grad1 dan grad0
function B = bfgs(B, deltaX, Y)
    N = length(deltaX);
    
    a = Y' * Y;
    b = deltaX' * Y;
    c = deltaX * deltaX';
    d = deltaX' * Y;
    e = deltaX * Y';
    
    B_old = B;
    
    B = B_old + ((1 + (a/b) *B) * (c/b)) - ((d + e)/e) * B;
end

% Gradient Fungsi
function g = grad(myFx, X)
  N = length(X);
  for iVar=1:N
    xt = X(iVar);
    h = 0.01 * (1 + abs(xt));
    X(iVar) = xt + h;
    fp = feval(myFx, X, N);
    X(iVar) = xt - h;
    fm = feval(myFx, X, N);
    X(iVar) = xt;
    g(iVar) = (fp - fm) / 2 / h;
  endfor;
  g = g';
end;