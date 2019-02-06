%Solving an ordinary differential equation system

% tspan = [0 5];
% y0 = 0;
% [t,y] = ode45(@(t,y) 2*t, tspan, y0);
% plot(t,y,'-o')
% 
% %Another example
% k = tspan([0 20]) 
% 
% function dydt = vdp(t1,y1)
% dydt = [y1(2); (1-y1(1)^2)*y1(2)-y1(1)];
% end

eqn = inline('[-(x(1)/10); (x(1)-y(2))/10]','x', 'y');

[x,y] = ode45(eqn, [0:0.2:3], [10 10]);
disp([x y])
plot(x,y,'-o')