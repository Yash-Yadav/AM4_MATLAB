clc
clear all
format compact
syms x
y=input('Enter the Function to be integrated: ');
x0=input('Enter x0: ');
xn=input('Enter xn: ');
n=input('Enter the no. of Sub-intervals: ');
h=(xn-x0)/n; %Difference between xn and xn+1
Sum=0;
for i=1:+1:n-1 %Intitial Value 1, Step +1 and EndVal=n-1
    Sum=Sum+subs(y,x0+i*h);
end
F=((subs(y,x0)+subs(y,xn))/2 + Sum);
Result=h*F;
disp(Result);