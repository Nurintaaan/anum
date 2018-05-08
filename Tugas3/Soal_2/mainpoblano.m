diary('result.txt')
diary on

function poblanoFunction(fx, x)
  tic;
  res = lbfgs(fx, x)
  res.X
  toc;
end

%Function A
poblanoFunction(@AFunction, [1 2]');

%Function B
poblanoFunction(@BFunction, [1 1 -0.5]');

%Function Griewank
x = [-400 -200 200 400 -400 -200 200 400];
poblanoFunction(@GRFunction, [x]');
