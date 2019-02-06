%This are constants
alpha = (6/28) + (1/7);
beta  = 3/4*7^2;
iota  = 9/4*7^2;
A1    = 7;
A2    = A1;
beta1 = 3/4;
beta2 = 1;

syms h2(t) h1(t) t
%The 's' in 'hs' means second, because is the same 'h2' 

eqn = diff(h2,t,2) + diff(h2,t)*alpha +h2*beta - iota == 0;
Dh2(t) = diff(h2,t);
cond = [h2(0) == 5, Dh2(0) == 0];
h2sol(t) = dsolve(eqn,cond);
lp = laplace(h2sol(t));
pretty(lp);
ilp = ilaplace(lp); 

h2(t) = ilp;
%h2(t) = 2*exp(-(5*t)/28)*(cos((28787^(1/2)*t)/28) + (5*28787^(1/2)*...
%    sin((28787^(1/2)*t)/28))/28787) + 3;
Dhs(t) = diff(h2,t);

h1(t) = (A2/beta1)*Dhs(t) + h2(t) + (beta2/beta1)*h2(t);


plot(t, h1, '-*')
