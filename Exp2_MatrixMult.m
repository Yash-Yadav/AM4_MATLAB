clc
clear
A=input('Enter the Matrix A:  ')
[m1,n1]=size(A);
B=input('Enter the Matrix B:  ')
[m2,n2]=size(B);
st='\nMultiplication of Matrix\n';
error='Sorry! above matrices can not be multiplied ';
fprintf(st);
if(n1==m2)
    Result=A*B
else
    fprintf(error)
end