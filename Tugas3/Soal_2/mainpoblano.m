%diary('resultpoblano.txt')
%diary on
%to write the answer on a file

function poblanoFunction(fx, x)
  tic;
  res = lbfgs(fx, x)
  toc;
end

%Function A
poblanoFunction(@AFunction, [1 2]');

%Function B
poblanoFunction(@BFunction, [1 1 -0.5]');

%Function Griewank
x = [-400 -200 200 400];
poblanoFunction(@GRFunction, [x]');
