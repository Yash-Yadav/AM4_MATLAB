clc
clear
format rat %rat: Ratio of Small Integers
A=input('Enter the Matirix A: ');
[m,n]=size(A); %m Rows and n Columns of Matrix A
if(m==n)
    [V,D]=eig(A);
for i=1:1:n
    fprintf('The Eigen value #%d is:\n', i);
    disp(D(i,i));
    fprintf('The corresponding Eigen Vector is: ');
    V(:,i) %(:,i)Indicating the ith Column of Eig(A)
end
else
    fprintf('\nMatrix Entered is not a Square Matrix');
end