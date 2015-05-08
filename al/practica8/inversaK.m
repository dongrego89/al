m=256;
A=[21 35; 18 79];
determinante=det(A);
[d, a, b]=gcd(mod(determinante,m),m);
if(d~=1)
fprintf('la matriz no es inversible');
else
B=round(determinante*inv(A));
inverso_determinante=mod(a,m);
B=mod(inverso_determinante*B,m);
disp(B);
end