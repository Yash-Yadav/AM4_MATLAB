clc
clear
format compact
format short
syms x y
fn=input('Enter the Function to be Integrated: ');
x0=input('Enter the value of x0: ');
y0=input('Enter the value of y0: ');
h=input('Enter the value of h(The step): ');
xn=input('Enter the value of xn: ');
while(x0~=xn)
    if(x0==xn)
        break
    end
    k1=h*subs(fn,{x,y},{x0,y0});%subs(funciton,OldVaues,newValues)
    k2=h*subs(fn,{x,y},{x0+h/2,y0+k1/2});
    k3=h*subs(fn,{x,y},{x0+h/2,y0+k2/2});
    k4=h*subs(fn,{x,y},{x0+h/2,y0+k3});
    fprintf('\n');
    k=(k1+(k2+k3)*2+k4)/6
    x0=x0+h;
    y0=y0+k;
    fprintf('The value of the Funciton is: %f when x is: %g',y0,x0);
end