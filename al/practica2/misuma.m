function[retorno] = misuma(x,n)
    retorno=0;
    for i=1:n
        retorno=retorno + (i * x^(i-1));
    end
end