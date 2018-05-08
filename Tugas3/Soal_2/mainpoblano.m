function mainpoblano()
  fprintf('------ FUNCTION A ------\n');
  poblanoFunction(@AFunction, [1 2]');

  fprintf('------ FUNCTION B ------\n');
  poblanoFunction(@BFunction, [1 1 -0.5]');
  
  fprintf('------ FUNCTION C ------\n');
  x = [-400 -200 200 400];
  poblanoFunction(@GRFunction, [x]');
end;

function poblanoFunction(fx, x)
  for tol  = [10e-4 10e-6 10e-8 10e-10 10e-12];
    fprintf('------------ Limited Memory BFGS ------------\n');
    tic;
    res = lbfgs(fx, x);
    toc;
    fprintf('------------ Nonlinear Conjugate Gradient ------------\n');
    tic;
    res = ncg(fx, x);
    toc;
  end;
end;