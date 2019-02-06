
% eqn = inline('[-(x(1)/10); (x(1)-y(2))/10]','x', 'y');
% 
% [x,y] = ode45(eqn, [0:0.2:3], [10 10]);
% disp([x y])
% plot(x,y,'-o')

F    = 3;
A1    = 7;
A2    = A1;
beta1 = 3/4;
beta2 = 1;

eqns = inline('[(3/7)-(3/28)*(h(1)-j(2)); (3/28)*(h(1)-j(2))-(1/7)*j(2)]' ,'h','j');
[h,j] = ode45(eqns, [0:0.1:20], [6 5]);
disp([h j])
plot(h, j, '-o')