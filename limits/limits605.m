%Uzdevumu krajums augstaka matematika
%Robezu aprekinasana
%Uzdevums No. 605

function limits605()
  source ("../utils/arbLog.m")

  pkg load symbolic
  syms x
  inc = 0;

  printf('%d:   ', inc++); limit(3^x*sin(x), x, -inf)
  printf('%d:   ', inc++); limit(x*log10(x), x, +inf)
  printf('%d:   ', inc++); limit(4^x+3^x, x, -inf)
  printf('%d:   ', inc++); limit(x+atan(x), x, +inf)
  printf('%d:   ', inc++); limit(sin(x)/2^x, x, +inf)

  printf('%d:   ', inc++);
  limit(atan(x)/x, x, +inf)
  printf('     ', inc++);
  limit(atan(x)/x, x, -inf)

  printf('%d:   ', inc++); limit(arbLog(sym(1)/2,x)-3*x, x, +inf)
  printf('%d:   ', inc++); limit((2*x)/arbLog(sym(2),x), x, 0, 'right')
  printf('%d:   ', inc++); limit(arbLog(sym(1)/3,x)/x, x, 0, 'right')
  printf('%d:   ', inc++); limit(3/(x-1)^2, x, 1)
  printf('%d:   ', inc++); limit((3^x)/(cos(x)), x, +inf)
  printf('%d:   ', inc++); limit(-(2/tan(x)), x, sym(pi)/2)
  printf('%d:   ', inc++); limit((x^2)*e^(-1/(x^2)), x, 0)
  printf('%d:   ', inc++); limit(2/(sin(x-2)), x, 2)
  printf('%d:   ', inc++); limit(3/(3^(x+1)), x, -inf)

  printf('%d:   ', inc++); limit( ((sym(1)/2)^x)*cos(x), x, +inf )
  printf('%d:   ', inc++); limit((x+5)/(x^2 + 3*x + 7), x, -2)
  printf('%d:   ', inc++); limit((2*(x^3)+x)/(x^2 + 3*x + 1), x, 0)
  printf('%d:   ', inc++); limit(x*sin(sym(1)/x), x, 0)
  printf('%d:   ', inc++); limit(x*log(x)-2^(-x), x, +inf)
  printf('%d:   ', inc++); limit(x/(arbLog(sym(10), abs(x))), x, 0)


endfunction
