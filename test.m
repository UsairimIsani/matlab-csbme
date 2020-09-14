% 3s2+13s+16/(s+2)(s+3)3
% [z , k] = zero(roots([3 13 16]),[-2,-3, -3 ,-3])
% [num , den ] = zpk(,[-2,-3, -3 ,-3],[1])


% % syms s
% s = zpk("s")
% t = (3*s^2 + 13*s + 16)/((s+2)*(s+3)^3)




% t= tf(abs(zer)',po,1);
% [num,den]  = zpk(t)













% Had to transpose the roots vector
%  because it returned a col vector



zer = roots([3 13 16])';
po = [-2 -3 -3 -3];
z = zpk(zer,po,1)
