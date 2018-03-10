clc
clear
fprintf('\nUnit STEP FUNCTION\n');
a=input('Enter the value of a: ');
t=a-5:1:a+5;
n=size(t);
disp(n(1));
disp(n(2));
for i=1:1:n(2)
    if t(i)<a;
        r(i)=0;
    else
        r(i)=1;
    end
end
    plot(t,r, 'red--','linewidth',3);
    axis([a-5,a+5,0,5]);
    title('Unit Step Function');
    xlabel('x Axis');
    ylabel('y Axis');