function [res] = delta_function_c(x)
    n = length(x);
    for d = 1:n
      sum = 0;
      mul = 1;
      for i = 1:n 
        if(i == d) 
          sum = sum + ((x(i))/2000);
          mul = mul * 1/sqrt(i) * (sin(x(i)/ sqrt(i)));
        else
          mul = mul * (cos(x(i)/ sqrt(i)));
        end
      end
      y(d) = sum +  mul;
    end
    res = y';
end