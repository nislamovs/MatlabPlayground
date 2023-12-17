x = linspace(0,10,50);
y1 = sin(x);
plot(x,y1)
title('Combine Plots')
xlabel('x value')
ylabel('y value')
hold on

y2 = sin(x/2);
plot(x,y2)

y3 = 2*sin(x);
scatter(x,y3) 

hold off

t = (-1:0.01:1)';

impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
sqwave = 0.81*square(4*pi*t);
plot(t,sqwave)


sqwave1 = 0.81*square(4*pi*t);
plot(t,sqwave1)
