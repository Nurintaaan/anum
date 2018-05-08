function [fx, gradf] = GRFunction(x)
    warning('off', 'all');
    fx = c(x);
    gradf = FirstDerivatives(x, @c);

end;

function y = c(x)
    n = length(x);
    sum = 0;
    mul = 1;
    
    for i = 1:n 
      sum = sum + ((x(i).^2)/4000);
      if(i == 0) break; end;
      mul = mul * (cos(x(i)/ sqrt(i)));
    end;
    
    y = 1 + sum -  mul;
end; 
 
function FirstDerivX = FirstDerivatives(X, myFx)

N = length(X);
for iVar=1:N
  xt = X(iVar);
  h = 0.01 * (1 + abs(xt));
  X(iVar) = xt + h;
  fp = feval(myFx, X, N);
  X(iVar) = xt - h;
  fm = feval(myFx, X, N);
  X(iVar) = xt;
  FirstDerivX(iVar) = (fp - fm) / 2 / h;
end
FirstDerivX = FirstDerivX' ;
end;