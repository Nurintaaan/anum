T = [0, -0.25, 0.25, -0.5, 0.5, -0.75, 0.75, -1, 1];
Y = [0, 0, 0, 0, 0, 0, 0, 0, 0];
n = length(T);

for i = 1:n
    Y(i) = sin(pi*T(i));
end
x = interpolasi_newton(1, T,Y);
E = [0, 0, 0, 0, 0, 0, 0, 0, 0];
for j = 1:n
    y_temp = interpolasi_newton(T(j),T,Y);
    E(j) = abs(y_temp - Y(j));
end

error = norm(E);

points = linspace(-1,1,10);

f_result = [];
p_result = [];
for point = points
    f_result = [f_result sin(pi*point)];
    p_result = [p_result interpolasi_newton(point, T, Y)];
end

plot(points,f_result,'-b');
plot(points,p_result,'-r');
