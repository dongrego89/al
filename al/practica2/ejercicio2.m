clc;
sumatorio=0;
for i=1:1000
    sumatorio=sumatorio+(1/(i^2));
end
fprintf('El resultado de dicha fórmula es %.6f que aproximadamente es 1.64493\n',sumatorio);