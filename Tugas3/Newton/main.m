t = [1,2,3,4];
initial = [-400, -200, 200, 400, -400, -200, 200, 400];
for i = 1 : length(t)
   n = t(i);
   x = repmat(initial, 1, 8.^(n-1));
end
tebakan_awal = x;
[res, iter, time] = newton(tebakan_awal, @hessian_function_c, @delta_function_c, 1e-4)
csvwrite('fungsic8.csv', res);
