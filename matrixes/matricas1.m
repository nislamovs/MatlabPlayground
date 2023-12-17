%Uzdevumu krajums augstaka matematika
%Matricu determinantu aprekinasana
%Uzdevums No. 1
1;

function calcDeterminant(matrix, counter)
    if (strcmp(typeinfo(matrix), "class") == 1)
        fprintf("%d:    det = [\n", counter)
        disp(det(matrix))
        fprintf("]\n")
    else
        fprintf("%d:    det = [%d]\n", counter, det(matrix))
    endif
endfunction

function matricas1()
  pkg load symbolic
  syms x a b t c

  inc = 1;

  A1 = [4,3; 1,2];
  A2 = [4, -3; 2, 1];
  A3 = [51, 47; 52, 48];
  A4 = [62, 63; 74, 75];
  A5 = [-1, 5; -3, 2];
  A6 = [a+b, a-b; a-b, a+b];
  A7 = [x+1, 1; x^3, x^2-x+1];
  A8 = [4-2*a+a^2, 2-a; 4+2*a+a^2, 2+a];
  A9 = [cos(t), -sin(t); sin(t), cos(t)];
  A10 = [tan(t), 1; -1, tan(t)];
  A11 = [-1, 2; 3, -6];

  A12 = [1-sqrt(2), 2-sqrt(5); 2+sqrt(5), 1+sqrt(2)];
  A122 = [1-2^(sym(1)/2), 2-5^(sym(1)/2); 2+5^(sym(1)/2), 1+2^(sym(1)/2)];

  A13 = [a+1, b-c; a^2+a, a*b-a*c];

  calcDeterminant(A1, inc++);
  calcDeterminant(A2, inc++);
  calcDeterminant(A3, inc++);
  calcDeterminant(A4, inc++);
  calcDeterminant(A5, inc++);
  calcDeterminant(A6, inc++);
  calcDeterminant(A7, inc++);
  calcDeterminant(A8, inc++);
  calcDeterminant(A9, inc++);
  calcDeterminant(A10, inc++);
  calcDeterminant(A11, inc++);

  calcDeterminant(A12, inc++);
  calcDeterminant(A122, inc++);

  calcDeterminant(A13, inc++);

endfunction

matricas1()
