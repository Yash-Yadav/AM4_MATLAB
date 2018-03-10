clear
syms x;
f=input('Enter the Function: ');
x0=input('Enter the initial Root(assumed): ');
xn=input('Enter the no. of iterations: ');
dfx = diff(f);
fnx = zeros(1);
fnx(1) = x0;
for idx = 1:1:xn
    num_fx = subs(f,x,fnx(idx));
    den_fx = subs(dfx,x,fnx(idx));
    fnx(idx+1) = fnx(idx) - (num_fx)/(den_fx);
end
r=fnx(idx+1);
disp(r);

error_ar(5)=zeros(1);
fnx(1) = x0;
for idx=1:1:5
    error_ar(idx)=fnx(idx)-r;
end
plot(error_ar);
xlabel('Number of iteration');
ylabel('Error');
xlabel('Error VS Number of iteration');