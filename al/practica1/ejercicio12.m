clc;
cara=0;
cruz=0;
while(cara~=20)
    fprintf('Tirada numero %d:\n',cara+cruz+1);
    if(rand(1)<0.50)
        cara=cara+1;
        fprintf('Cara !!!\n\n');
    else
        cruz=cruz+1;
        fprintf('Cruz !!!\n\n');
    end
end 
fprintf('\n\tHan sido necesarias %d tiradas para conseguir las %d caras\n',cara+cruz,cara);