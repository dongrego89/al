clc;
sumatorio=0;
x=0.50;
total=0;

for i=0:99
    total=(i+1)*(x^i);
    sumatorio=sumatorio+total;
end
fprintf('El sumatorio resultado de los 100 primeros elementos de la sucesión es %.2f\n',sumatorio);