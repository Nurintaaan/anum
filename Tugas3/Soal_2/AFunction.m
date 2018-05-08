function [fx, gradf] = AFunction(x)
    fx = 0.5 * x(1).^2 + 2.5 * x(2).^2;
    gradf(1) = x(1);
    gradf(2) = 5 * x(2);
    gradf = gradf';
end;