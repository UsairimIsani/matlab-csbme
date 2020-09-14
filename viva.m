clear all;
clc;

[g1num, g1den ] = tfdata(tf([1],[1 10]),'v')

[g2num, g2den] = tfdata(tf([1 2 1],[1 0 8]),'v')

[h1num,h1den] = tfdata(tf([1 1],[1 4]),'v')

[h2num,h2den] = tfdata(tf([2],[1]),'v')
% G1G2

[g12num,g12den ] = series(g1num,g1den,g2num,g2den)

% H1H2

[h12num,h12den] = series(h1num,h1den,h2num,h2den)

% G1G2H1H2

[feednum,feedden] = series(g12num,g12den,h12num,h12den)

% R 
[crnum,crden] = feedback(g12num,g12den,feednum,feedden,1)


% U1

[cu1num,cu1den]= feedback(g1num,g1den,feednum,feedden,1)


% G1H1H2

[g1h1h2num, g1h1h2den ] = series(g1num,g1den,h12num,h12den)

%  U2
[cu2num,cu2den]= feedback(g1h1h2num,g1h1h2den,feednum,feedden,1)

tf(crnum,crden)
tf(cu1num,cu1den)
tf(cu2num,cu2den)


