clc;
max=0;
v=[2, 7.1, -1, 2.3, 44, 11];
for i=1:length(v)
   if(v(i)>max)
       max=v(i);
   end
end
fprintf('El mayor elemento del vector v es %.2f\n',max);