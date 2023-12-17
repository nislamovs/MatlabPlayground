%Uzdevumu krajums augstaka matematika
%Atvasinajumu aprekinasana
%Uzdevums No. 779


function derivatives779()

  source ("../utils/arbLog.m")
  pkg load symbolic
  syms x
  inc = 0;

  printf('%d:   ', inc++); f = (3-2*x^2)^4 ; diff(f)  % not equal with answers
  printf('%d:   ', inc++); f = (1/x^2-3)^5 ; diff(f)
  printf('%d:   ', inc++); f = (sin(x)-2*cos(x))^3 ; diff(f)
  printf('%d:   ', inc++); f = (2*x-cos(x)^2) ; diff(f)
  printf('%d:   ', inc++); f = (x+log(x))^2 ; diff(f)
  printf('%d:   ', inc++); f = (x/3+tan(x)^3) ; diff(f)
  printf('%d:   ', inc++); f = (x/2+2/x)^4 ; diff(f)
  printf('%d:   ', inc++); f = (2*sqrt(x)-log(x)^3) ; diff(f)
%%  printf('%d:   ', inc++); f = ((log(3)^4)*x+log(2)^3) ; diff(f) % not clear example
  printf('%d:   ', inc++); f = ((1/(2*x) + asin(x))^3) ; diff(f)
  printf('%d:   ', inc++); f = ((2 * e^x - 2^x)^5) ; diff(f)
  printf('%d:   ', inc++); f = ((cot(x)^2)/2 - (2*x)/3) ; diff(f)
  printf('%d:   ', inc++); f = (3/sin(x)^2 + cos(x)^3/3) ; diff(f)
  printf('%d:   ', inc++); f = (1/(x+atan(x))^3) ; diff(f)
  printf('%d:   ', inc++); f = (sinh(x)^2-1/cosh(x)^2) ; diff(f)
  printf('%d:   ', inc++); f = (2/acos(x) - atan(3)) ; diff(f)

endfunction