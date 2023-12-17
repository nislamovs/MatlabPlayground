num1 = -2;
num2 = -3;
f = @(x)x+num2-num1;
x0 = 0; % Initial guess for x
x = fzero(f,x0)



pkg load symbolic
syms x
solve(x-3==2)


solve(sin(x)==1)