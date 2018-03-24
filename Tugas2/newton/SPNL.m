function [hasil_iterasi] = SPNL(x, y)
  
  a = @(x, y) 2 * x + 3 * (y ^ 2);
  b = @(x, y) 6 * x * y + 8;
  c = @(x, y) (-pi * (sin (pi * x))) - (y) ^ 2;
  d = @(x, y) -2 * x * y;
  
  f1 = @(x, y) (x ^ 2 + 3 * (x * (y ^ 2)) + (8 * y)) - 100;
  f2 = @(x, y) cos (x * pi) - x * (y ^ 2) + 35;
  
  x_new = x;
  y_new = y;
  tol = 1e-5;
  
  flag = false;
  J = changeJ(x,y, a,b,c,d)
    
  for iterasi = 1:10
    fprintf('============================== \n');
    fprintf('ITERASI = %d \n', iterasi);
    
    F12 = [f1(x_new,y_new);
    f2(x_new,y_new)];
    
    [L, U] = lu(J);
    r = L\-F12;
    d = U\r;
    
    x_new = x_new + d(1,1);
    y_new = y_new + d(2,1);
    hasil_iterasi = abs(f1(x, y));
    

    fprintf('hasil x yang baru %d \n',x_new);
    fprintf('hasil y yang baru %d \n',y_new);
    fprintf('error yang dihasilkan %d \n',hasil_iterasi);
    fprintf('============================== \n');
    if (abs(f1(x, y)) < tol), break;
        
    end
    
  end
  
  
end

