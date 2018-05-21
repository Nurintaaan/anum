% Cubic Spline Function
% param sub_interval : length of sub_interval e.g 10
% return C : cooficient of hermite cubic spline interpolation

% source : https://gist.github.com/cmaes/1269709/c415aa18ee64d8acdfe4754c9f9b06b257424797
% modified for this task

function [C] = cubic_spline_main(sub_interval, f , df, i)
  
  start_interval = -4;
  end_interval = 4;
 
  % divide interval into subinterval
  x = linspace(start_interval,end_interval,sub_interval+1);
  
  
  % get cooficient from hermit spline function
  C = hermite_spline(x, f, df);
  figure(i);
  hold on;
  
  xs = linspace(start_interval, end_interval, 100);
  interpolated = [];
  max_error = 0;

  % plot cubic spline
  for i = 1:length(xs)
    p = xs(i);
    idx = min(lookup(x, p), sub_interval-1);
    row_i = [p.^3; p.^2; p; 1]' * C(idx, :)';
    interpolated = vertcat(interpolated, row_i);

    % calculate error
    if(i < length(xs))
      x_bar = (xs(i+1) + xs(i))/2;      
    endif

    fx = f(x_bar);
    sx = [x_bar.^3; x_bar.^2; x_bar; 1]' * C(idx, :)';
    error_i = abs((fx-sx) / fx);
    max_error = max(max_error, error_i);
  endfor

  title("Runge Function");
  plot(xs, interpolated, 'b-');
  plot(xs, arrayfun(f, xs), 'r-');
  legend('Interpolated', 'Runge Function');
  hold off;
  
  disp('Cubic spline cooficient'), disp(C)
  disp('Cubic spline max-error:'), disp(max_error)
endfunction;