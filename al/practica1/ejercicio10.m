clc;
for i=1:1000
   if((mod(i,2)~=0) && (mod(i,3)~=0) &&  (mod(i,5)~=0))
    fprintf('\tEl numero %3d no es divisible por el conjunto (2,3,5) \n',i);
   end
end