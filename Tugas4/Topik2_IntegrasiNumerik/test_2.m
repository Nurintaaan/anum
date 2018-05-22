% Test for topic 2% ===== SOAL =======% Lakukan perhitungan integrasi fungsi ∫∫𝒆𝒚𝒄𝒐𝒔(𝒙) 𝒅𝒙 𝒅𝒚𝝅𝟐𝟎𝟏𝟎% dengan menggunakan metode:% a. Romberg, dengan nilai 𝑛=8,64,128 fprintf('xxxxxxxxxxxxxxx THIS IS TEST FOR ROMBERG xxxxxxxxxxxxxxxx\n') ;n = [8 64 128];f = @(x) e^x;g = @(x) cos(x);Result = [];for i = 1:length(n)  fprintf('============ Test For Depth(n)[') ;  fprintf(' %d ', n(i)) ;  fprintf('] ============\n') ;    tic;    f = @(x) cos(x);  [r, j,err] = romberg_method(f, 0, pi/2, n(i));  f = @(y) e.^(y) * double(r);  [r,j,err] = romberg_method(f, 0, 1, n(i));  time = toc;  real_val = 1.718;  accuracy = abs(real_val - r);  Result = [Result; [i time r err j accuracy']];endforcsvwrite("result.csv", Result);% b. Simpson Adaptive Quadrature, dengan nilai ??=10-3,10-4,10-5eps = [1e-3 1e-4 1e-5];f = @(x) e^x;g = @(x) cos(x);fprintf('\nxxxxx THIS IS TEST FOR SIMPSONS ADAPTIVE QUADRATURE xxxxx\n') ;for i = 1:length(eps)  fprintf('============ Test For Epsilon[') ;  fprintf(' %d ', i) ;  fprintf('] ============\n') ;  Epsilon = eps(i)    tic;  Error = adaptive_quadrature_simpsons(f, 0, 1 ,eps(1)) * adaptive_quadrature_simpsons(g, 0, pi/2, eps(1))  toc;endfprintf('\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n');