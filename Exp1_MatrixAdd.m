clc
clear
A=input('Enter the Matrix A  ')
[m1,n1]=size(A);
B=input('Enter the Matrix B  ')
[m2,n2]=size(B);
if(size(A)==size(B))
	Result=A+B
end