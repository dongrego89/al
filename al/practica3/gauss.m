clc

A=[1 -3 -2 7 0; 0 5 19 -11 1; 0 0 -37 23 -3; 0 0 -32 2 -1]

format rat

A(4,:)=A(4,:)+A(3,:)*(-32/37)
