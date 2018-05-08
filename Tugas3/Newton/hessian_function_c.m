function [res] = hessian_function_c(x)
    n = length(x);
    y = zeros(n);
    for i = 1:n
        changed_x = (1/sqrt(i))*sin(x(i)/sqrt(i));
        for j = 1:n
            if i == j
                mul = (1/i)*cos(x(i)/sqrt(i));
                for k = 1:n
                    if j ~= k
                        mul = mul*cos(x(k)/sqrt(k));
                    end
                end
                y(i,j) = 1/2000 + mul;
            end
            mul = 1;
            for k = 1:n
                if k == i
                    mul = mul*changed_x;
                elseif k == j
                    mul = mul*-(1/sqrt(k))*sin(x(k)/sqrt(k))
                else
                    mul = mul*cos(x(k)/sqrt(k));
                end
            end
            y(i,j) = mul;
        end
    end
    res = y;
end