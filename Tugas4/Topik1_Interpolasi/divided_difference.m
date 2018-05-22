function divided_diff = divided_difference(t, y)
    n = length(t);
    
    divided_diff = zeros(n);
    divided_diff(:,1)= y; 
    for i = 2:n
        for j = 2:i
            numerator = divided_diff(i,j-1) - divided_diff(i-1,j-1);
            denominator = t(i) - t(i-j+1);
            divided_diff(i,j) = numerator / denominator;
        end
    end
end