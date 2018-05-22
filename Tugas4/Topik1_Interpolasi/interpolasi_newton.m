function [p] = interpolasi_newton(t,T, Y)
    divided_diff = divided_difference(T,Y);
    a = diag(divided_diff);
    p = a(1);
    n = length(T);
    for i = 2:n
        mul = 1;
        for j = 1:i-1
            mul = mul * (t-T(j));
        end
        p = p + a(i)*mul;
    end
end