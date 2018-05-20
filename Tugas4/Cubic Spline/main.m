function [C] = main(sub_interval)
  
  % divide interval into subinterval
  x = linspace(-4,4,sub_interval);
  runge = @(x) 10 / (1 + 25 * x.^2);
  derif_runge = @(x) (-500 * x)/((1 + 25 * x.^2).^2);
  
  C = hermite_spline(x, runge, derif_runge)
  
  figure(1);
  hold on;
  plot_range = linspace(-4, 4, 200);
  interpolated = [];
  max_error = 0;
  for p = plot_range
    idx = min(lookup(x, p), sub_interval-1);
    row_i = [p.^3; p.^2; p; 1]' * C(idx, :)';
    interpolated = vertcat(interpolated, row_i);

    real_i = runge(p);
    error_i = abs((real_i-row_i) / real_i);
    max_error = max(max_error, error_i);
endfor
  title("Runge Function");
  plot(plot_range, interpolated, 'b-');
  plot(plot_range, arrayfun(runge, plot_range), 'r-');
  legend('Interpolated', 'Real');
  hold off;

  disp('Runge function max-error:'), disp(max_error)
endfunction;