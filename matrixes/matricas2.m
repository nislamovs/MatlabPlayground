%Uzdevumu krajums augstaka matematika
%Matricu determinantu aprekinasana, vienadojumu risinasana
%Uzdevums No. 2
1;

function retval=calcDeterminant(matrix, counter)
    if (strcmp(typeinfo(matrix), "class") == 1)
        fprintf("%d:    det = [\n", counter)
        disp(det(matrix))
        fprintf("]\n")
    else
        fprintf("%d:    det = [%d]\n", counter, det(matrix))
    endif

    retval = det(matrix);
endfunction

function printSolution(condition, counter)
    fprintf("%d:    solution = [\n", counter)
    solve(condition)
    fprintf("]\n")

endfunction

function matricas2()
  pkg load symbolic
  syms x

  inc = 1;

  A1 = [x-1,x; x-1,5];
  A2 = [1-x, -1; 1, 3-x];
  A3 = [x^2, 3*x; 3, x];
  A4 = [x^2, x-1; 7, x];
  A5 = [[4^x, 2^x]; [-2, 1]];                           %workaround to avoid bug (octave_base_value::map_value(): wrong type argument 'scalar')
  A6 = [sin(x), sym(0.25); 1, cos(x)];
  A7 = [cos(5*x), sin(8*x); -sin(5*x), cos(8*x)];
  A8 = [cos(4*x), -cos(x); 2*cos(x), 1];

  det1=calcDeterminant(A1, inc++);
  det2=calcDeterminant(A2, inc++);
  det3=calcDeterminant(A3, inc++);
  det4=calcDeterminant(A4, inc++);
  det5=calcDeterminant(A5, inc++);
  det6=calcDeterminant(A6, inc++);
  det7=calcDeterminant(A7, inc++);
  det8=calcDeterminant(A8, inc++);

  inc = 1;

  fprintf("\n\n-------------- SOLUTIONS: --------------\n\n")

  printSolution(det1==0, inc++)
  printSolution(det2==0, inc++)
  printSolution(det3==0, inc++)
  printSolution(det4==1, inc++)
  printSolution(det5==3, inc++)
  printSolution(det6==0, inc++)
  printSolution(det7==0, inc++)
  printSolution(det8==0, inc++)

endfunction

matricas2()
