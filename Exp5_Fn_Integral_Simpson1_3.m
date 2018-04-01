cclc
clear
format compact
syms x
y=input('Enter the Function to be integrated: ');
x0=input('Enter x0: ');
xn=input('Enter xn: ');
n=input('Enter the no. of Sub-intervals: ');
h=(xn-x0)/n; %Difference between xn and xn+1
disp("h= "+h);
OddSum=0;
EvenSum=0;
for i=1:+2:n-1 %Intitial Value 1, Step +2 and EndVal=n-1
    OddSum=OddSum+subs(y,x0+i*h);
end
for i=2:+2:n-2 %Intitial Value 2, Step +2 and EndVal=n-2
    EvenSum=EvenSum+subs(y,x0+i*h);
end
F=(subs(y,x0)+subs(y,xn)+4*OddSum+2*EvenSum);
Result=(h/3)*F;
disp(Result);
