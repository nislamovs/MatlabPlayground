%Uzdevumu krajums augstaka matematika
%Matricu determinantu aprekinasana, k-tas rindas adjunktu atrasana
%Uzdevums No. 30
1;

function retval = calcMinorDeterminant(matrix, row, column)

    matrix(row,:) = [];
    matrix(:,column) = [];
    retval = det(matrix);

endfunction

function retval = calcMatrixAdjunct(matrix, row, column)

    minor = calcMinorDeterminant(matrix, row, column);
    retval = ((-1)^(row+column)) * minor;

endfunction

function matricas30()

  A1 = [2,-3,5,1; 4,0,0,5; 3,5,2,4; 2,8,-3,3];
  A2 = [3,1,1,1; 1,3,1,1; 1,1,3,1; 1,1,1,3];

  k = 2
  for curCol = 1:columns(A1)
    adjunct = calcMatrixAdjunct(A1, k, curCol);
    int32(adjunct)
  endfor

  printf("\n-------------------------\n")

  k = 3
  for curCol = 1:columns(A2)
    adjunct = calcMatrixAdjunct(A2, k, curCol);
    int32(adjunct)
  endfor

endfunction

matricas30()
