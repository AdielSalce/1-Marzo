function dxdt = PD(t, x)
    syms ;
    a=0.4;
    b=0.4;
    c=0.09;
    d=2;  
    dxdt=[(d/c); (a/b)];
end




function [t, x] = call_PD()
    tspan = [0 50];
    x0 = 0;
    [t, x] = ode45(@PD,tspan, x0);
end
