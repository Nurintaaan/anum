function mainpoblano()
  warning off;
  diary('result_soal2.txt');
  diary on;
  
  fprintf('------ FUNCTION A ------\n');
  poblanoFunction(@AFunction, [1 2]');

  fprintf('------ FUNCTION B ------\n');
  poblanoFunction(@BFunction, [1 1 -0.5]');
  
  fprintf('------ FUNCTION C ------\n');
  x = [-400 -200 200 400 -400 -200 200 400];
  poblanoFunction(@GRFunction, [x]');
  poblanoFunction(@GRFunction, [x x]');
  poblanoFunction(@GRFunction, [x x x]');
  poblanoFunction(@GRFunction, [x x x x]');
  poblanoFunction(@GRFunction, [x x x x x]');
end;

function poblanoFunction(fx, x)
  for tol  = [10e-4 10e-6 10e-8 10e-10 10e-12];
    fprintf('------------ Limited Memory BFGS tol = %d ------------\n', tol);
    tic;
    res = lbfgs(fx, x, 'Display', 'final');
    toc;
    fprintf('------------ Nonlinear Conjugate Gradient tol = %d ------------\n', tol);
    tic;
    res = ncg(fx, x, 'Display', 'final');
    toc;
  end;
end;