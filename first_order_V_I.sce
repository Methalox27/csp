//case 2
clear;
clc;
R=500
Vin = 5
iin=5
t = (0:0.0001:0.01)
L1 = 1.0
TC1 = L1/R
Vo1=Vin*(exp(-(t/TC1)));
io1=iin*(1-exp(-(t/TC1)))
plot(t,Vo1,'b');
plot(t,io1,'r');
