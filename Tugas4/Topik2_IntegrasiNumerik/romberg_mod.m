function R = romberg_mod(f,a,b,n)
%f is the input string
%a & b are the upper and lower limits of integration
%n is the number of levels to use
M=1;
h=b-a;
err=1;
J=0;
R=zeros(n,n);
%Start of composite trapezoidal rule
% and evaluation of first column values
R(1,1)=h*(feval(f,a)+feval(f,b))/2;
while(J<n)
    J=J+1;
    h=h/2;
    sum=0;
    for p=1:M
        x=a+h*(2*p-1);
        sum=sum+feval(f,x);
    end
    R(J+1,1)=R(J,1)/2+h*sum;
    M=2*M;
%End of composite trapezoidal rule
% and evaluation of other columns
    for K=1:J
        R(J+1,K+1) = R(J+1,K)+(R(J+1,K)-R(J,K))/(4^K-1);
    end
    err = abs(R(J,J)-R(J+1,K+1));
end