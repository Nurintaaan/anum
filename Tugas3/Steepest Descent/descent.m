function x = descent(x, func_val, gradient)
    alpha = 1 ;
    g =  gradient(x, func_val) ;
    k = 0;
    
    while norm(g) > 1e-2 
          d = - g ; 
          alpha = step_length(x,g,d, func_val);
          x = x + alpha * d;
          k = k + 1 ;  
          func_val(x) ;
          g = gradient(x, func_val) ;   
    end
   x
end 