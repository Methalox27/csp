clc;
clear;
clf;
R1 = 500;
L1 = 10;
C1 = 10e-6;
s = %s;
w1 = 1/((L1*C1)**(0.5))
Z1 = (R1/2)*((C1/L1)**(0.5))
t = (0:0.0001:1);
TF1 = syslin('c',w1**2,s**2+2*Z1*w1*s+w1**2);
Vol = csim('step',t,TF1);
plot(t,Vol,'b');
xgrid();


R2 = 0;
L2 = 10;
C2 = 10e-6;
s = %s;
w2 = 1/((L2*C2)**(0.5))
Z2 = (R2/2)*((C2/L2)**(0.5))
t = (0:0.0001:1);
TF2 = syslin('c',w2**2,s**2+2*Z2*w2*s+w2**2);
Vo2 = csim('step',t,TF2);
plot(t,Vo2,'black');
xgrid();


R3 = 6324.55;
L3 = 10;
C3 = 10e-6;
s = %s;
w3 = 1/((L3*C3)**(0.5))
Z3 = (R3/2)*((C3/L3)**(0.5))
t = (0:0.0001:1);
TF3 = syslin('c',w3**2,s**2+2*Z3*w3*s+w3**2);
Vo1 = csim('step',t,TF3);
plot(t,Vo1,'r');
xgrid();

R4 = 20000;
L4 = 10;
C4 = 10e-6;
s = %s;
w4 = 1/((L4*C4)**(0.5))
Z4 = (R4/2)*((C4/L4)**(0.5))
t = (0:0.0001:1);
TF4 = syslin('c',w4**2,s**2+2*Z4*w4*s+w4**2);
Vo1 = csim('step',t,TF4);
plot(t,Vo1,'g');
xgrid();

