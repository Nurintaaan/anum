function [res] = function_c(x)
    n = length(x);
    sum = 0;
    mul = 1;
    
    for i = 1:n 
      sum = sum + ((x(i).^2)/4000);
    end
    for i = 1:n
      if(i == 0) 
          break; 
      end
      mul = mul * (cos(x(i)/ sqrt(i)));
    end
    
    res = 1 + sum -  mul;
end