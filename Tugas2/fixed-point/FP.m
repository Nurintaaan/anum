%% fungsi untuk menyelesaikan sistem persamaan non linear
%% menggunakan algoritma Fixed Point
%% kelompok Analisis Numerik 2017/2018 B-01
%% @Fachrur Rozi (150668943)

function [x, n, err, exec_time] = FP(f, g, x, tol)
  
  ITER_MAX = 1000;
  n = 0
  tic
  for i=1:ITER_MAX
    n = i;
    x = g(x);
    err = abs(f(x));
    if err < tol, break;
  end
  exec_time = toc;
  
end