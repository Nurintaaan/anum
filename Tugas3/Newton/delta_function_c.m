function [res] = delta_function_c(x)
n = length(x);
    sum = 0;
    mul = 1;
    for d = 1 : n
      for i = 1:n 
        if(i == d) 
          sum = sum + ((x(i))/2000);
        else
          sum = sum + ((x(i).^2)/4000);
        end
      end
      for i = 1:n
        if(i == 0) 
            break
        end
        if(i == d) 
          mul = mul * sqrt(i) * (-sin(x(i)/ sqrt(i)));
        else
          mul = mul * (cos(x(i)/ sqrt(i)));
        end
      end
      y(d) = 1 + sum -  mul;
    end
    res = y';
end