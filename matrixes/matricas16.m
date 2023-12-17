%Uzdevumu krajums augstaka matematika
%Matricu determinantu aprekinasana, k-tas kolonnas adjunktu atrasana
%Uzdevums No. 16
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

function matricas16()

  A1 = [1,-3,2; 4,5,3; -2,1,0];
  A2 = [3,-1,0; 1,-3,2; -6,2,1];

  k = 2
  for curRow = 1:rows(A1)
    adjunct = calcMatrixAdjunct(A1, curRow, k)
  endfor

  printf("\n-------------------------\n")

  k = 3
  for curRow = 1:rows(A2)
    adjunct = calcMatrixAdjunct(A2, curRow, k)
  endfor


endfunction

matricas16()
