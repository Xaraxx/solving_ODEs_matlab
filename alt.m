function dhdt = alt(t,h)
dhdt = [(3/7) - (3/28)*(h(1)-h(2)); (3/28)*(h(1)-h(2)) - (1/7)*h(2)];
end
