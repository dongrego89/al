function [letra] = imprimeletra( paquete)
letra='';
switch paquete
    case '00000'
        letra='A';
    case '00001'
        letra='B';
    case '00010'
        letra='C';
    case '00011'
        letra='D';
    case '00100'
        letra='E';
    case '00101'
        letra='F';
    case '00110'
        letra='G';
    case '00111'
        letra='H';
    case '01000'
        letra='I';
    case '01001'
        letra='J';
    case '01010'
        letra='K';
    case '01011'
        letra='L';
    case '01100'
        letra='M';
    case '01101'
        letra='N';
    case '01110'
        letra='Ñ';
    case '01111'
        letra='O';
    case '10000'
        letra='P';
    case '10001'
        letra='Q';
    case '10010'
        letra='R';
    case '10011'
        letra='S';
    case '10100'
        letra='T';
    case '10101'
        letra='U';
    case '10110'
        letra='V';
    case '10111'
        letra='W';
    case '11000'
        letra='X';
    case '11001'
        letra='Y';
    case '11010'
        letra='Z';
    case '11011'
        letra='.';
    case '11100'
        letra=',';
    case '11101'
        letra='¿';
    case '11110'
        letra='?';
    case '11111'
        letra=' ';
end


