clc;
v = [2 3 5 -7.1];
total=0;

for i=1:length(v)
    total = total + v(i);
end
fprintf('El resultado de sumar los %d elementos del vector v es %.2f\n',length(v),total);