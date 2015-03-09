clc;

A=[2 2 1;2 3 2; 1 2 2];

f=sqrt(2)
e=2/f
c=1/f
d=sqrt(3-e^2)
b=(2-c*e) / d
a=sqrt(2-((2-c*e)/d)^2 - (1/sqrt(2))^2)

%a=sqrt(2-((2-(1/f)*(2/f))/sqrt(3-e^2))^2-(1/sqrt(2))^2);

S=[a b c; 0 d e; 0 0 f]
T=[a 0 0; b d 0; c e f]
S*T

