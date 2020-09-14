% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.1
% Use the following MATLAB and Control System Toolbox 
% statements to form the linear,time-invariant(LTI)
% transfer function of  Eq. (2.22).

% 'TryIt 2.1'
F=zpk([],[-1 -2 -2],2)
% F = zpk([], [-2], 1)
% F = zpk([-2 -3], [-4 -5],56)




% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.2
% Use the following MATLAB statements to help you 
% get Eq. (2.26)

% 'TryIt 2.2'
numf=32;
denf=poly([0 -4 -8])
[R,p,k]= residue (numf,denf)


% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.3
% Use the following MATLAB and Control System Toolbox 
% statement to form the LTI transfer function of Eq. (2.30).

% 'TryIt 2.3'
F=tf([3 3 3 3],[1 2 5 0])

% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.4
% Use the following MATLAB
% and Symbolic Math Toolbox
% statements to get Eq. (2.38)
% from Eq. (2.30).

% 'TryIt 2.4'
S = tf('s');
mytransferfunction = 32/(S*(S^2+12*S+32))

% syms s
% f=ilaplace(32/(s*(s^2+12*s+32)));
% pretty(f)

syms H(s) s t 
H(s) = (s^2 + 3*s + 5)/(s^3 + 5*s^2 +6*s + 9);
Hpf = partfrac(H)
h(t) = vpa(ilaplace(Hpf,s,t))
hfcn = matlabFunction(h)


% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.5
% Use the following MATLAB statements to help you 
% get Eq. (2.47).

% 'TryIt 2.5'
numf=3
denf=[1 2 5 0]
[K,p,k]=residue(numf,denf)


% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.7
% Use the following MATLAB statements to plot Eq.(2.60)
% for t from 0 to 1 s at intervals of 0.01 s.

% 'TryIt 2.7'
t=0:0.1:1;
c = 1/2 - 1/2*exp(-2*t);
plot(t,c)



% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.8
% Use the following MATLAB and Symbolic Math Toolbox statements to help you
% solve for the electrical currents in Eqs.(2.94)

% 'TryIt 2.8'
syms s I1 I2 I3 V
A=[(2*s+2) -(2*s+1) -1
    -(2*s+1) (9*s+1) -4*s
    -1 -4*s (4*s+1+1/s)]
X=[I1 
I2
I3]
B=[V
0
0]
X=inv(A)*B;
pretty(X)


% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 2.9
% Use the following MATLAB and Symbolic Math Toolbox 
% statements to help you get Eq.(2.218)

% 'TryIt 2.9'
syms s J1 D1 K T J2 D2 theta1 theta2
A=[(J1*s^2+D1*s+K) -K
    -K (J2*s^2+D2*s+K)]
B=[theta1
    theta2]
C=[T
    0];
B=inv(A)*C;
theta2=B(2);
'Theta2'
pretty(theta2)


% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 3.2
% Use the following MATLAB and the Control System
% Toolbox statements to obtain the transfer function shown 
% in Skill-Assessment Exercise 3.4 from the state-space
% representation of Eqs. (3.78).

% % 'TryIt 3.2'
A=[-4 -1.5;4 0];
B=[2 0]';
C=[1.5 0.625];
D=0;
T=ss(A,B,C,D)
TT=tf(T)


% Nise, N.S. 
% Control Systems Engineering, 7th ed. 
% John Wiley & Sons, Hoboken, NJ, 07030
%
% Control Systems Engineering Toolbox Version 7.0 
% Copyright © 2015 by John Wiley & Sons, Inc.

% TryIt 3.1
% Use the following MATLAB statements to form an LTI
% state-space representation from the transfer function
% shown in Figure 3.12(a). The A matrix and B vector are
% shown in Eq. (3.63). The C vector is shown in Eq. (3.67).

% 'TryIt 3.1'
num=[1 7 2];
den=[1 9 26 24];
[A,B,C,D]=tf2ss(num,den)
% P=[0 0 1;0 1 0;1 0 0];
% A=inv(P)*A*P
% B=inv(P)*B
% C=C*P


% The function "ss" creates linear state-space models having the form
% 
% dx/dt=Ax + Bu
% 
% y=Cx + Du
% 
% as illustrated in the following example: Given the following state-space model:
% 
% dx1/dt=x2
% 
% dx2/dt=-4*x1 -2*x2 + 2*u
% 
% y=x1
% This model is created by

A=[0,1;-4,-2]; B=[0;2]; C=[1,0]; D=[0];
ss1=ss(A,B,C,D);

% To display ss1 we execute

ss1
[A1,B1,C1,D1,Ts]=ssdata(ss1)



num1 = [1]; den1 = [500 0 0];
num2 = [1 1]; den2 = [1 2];
[nume, dene] = series(num1, den1, num2, den2)
[numerator, denominator] = cloop(nume, dene,-1)

printsys(nume, dene)
printsys(numerator, denominator)