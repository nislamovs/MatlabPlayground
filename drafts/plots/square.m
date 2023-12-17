function y=square(t)
% License: public domain
t=t*(1/(pi));
y=ones(size(t));
y(find(bitand(abs(floor(t)),1)))=-1;