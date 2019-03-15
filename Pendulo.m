syms w q M l m J k
M=1;
l=5;
m=1;
J=0.5;
k=9.8;
g=(M+m)*w-m*l*cos(q)*q+m*l*sin(q)*q^2;
h=-m*l*cos(q)*w+(J+m*l^2)*w-m*k*l*sin(q);
[d1, d2]=solve([g==1; h==0], [w; q]);
c1=subs([d1. d2.], [w q], [1 0])
