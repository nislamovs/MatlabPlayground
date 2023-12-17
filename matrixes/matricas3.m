%Uzdevumu krajums augstaka matematika
%Matricu determinantu aprekinasana
%Uzdevums No. 3
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

function matricas3()
  pkg load symbolic
  syms x a b c

  inc = 1;

  A1 = [1,2,1; 2,1,1; 1,1,2];
  A2 = [1,2,3; 3,1,2; 2,3,1];
  A3 = [1,-1,2; -2,1,1; 1,-2,2];
  A4 = [1,2,3; 0,4,5; 0,0,6];
  A5 = [0,8,3; 1,5,0; 2,0,-3];
  A6 = [0,-a,-b; a,0,-c; b,c,0];

  calcDeterminant(A1, inc++);
  calcDeterminant(A2, inc++);
  calcDeterminant(A3, inc++);
  calcDeterminant(A4, inc++);
  calcDeterminant(A5, inc++);
  calcDeterminant(A6, inc++);

endfunction

matricas3()
