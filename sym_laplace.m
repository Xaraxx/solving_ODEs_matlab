%This are constants
alpha = (6/28) + (1/7);
beta  = 3/4*7^2;
iota  = 9/4*7^2;

syms h2(t)
eqn2 = diff(h2,t,2) + diff(h2,t)*alpha +h2*beta - iota == 0;
Dh2(t) = diff(h2,t);
cond2 = [h2(0) == 5, Dh2(0) == 0];
h2sol(t) = dsolve(eqn2,cond2);
lp2 = laplace(h2sol(t));
pretty(lp2);
ilp2 = ilaplace(lp2)
solv = simplify(ilp2)



%example n# 1

syms y(t) 
eqn = diff(y,t) - 3*y == exp(2*t);
cond = y(0) == 1;
ysol(t) = dsolve(eqn,cond)
lp = laplace(ysol(t))
ilp = ilaplace(lp)

%example n# 2

syms x(t)
eqn1 = diff(x,t,2) + 16*x == cos(4*t);
Dx = diff(x,t)
cond1 = [x(0) == 0, Dx(0) == 1];
xsol(t) = dsolve(eqn1,cond1);
lp1 = laplace(ysol(t));
pretty(lp1);
ilp1 = ilaplace(lp1)