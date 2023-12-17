%Uzdevumu krajums augstaka matematika
%Matricu determinantu aprekinasana, k-tas kolonnas adjunktu atrasana
%Uzdevums No. 29
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

function matricas29()

  A1 = [1,0,9,2; 3,1,-7,-2; 5,1,10,2; 7,-2,13,0];
  A2 = [1,2,3,4; 2,-1,4,-3; -3,4,1,-2; 4,3,-2,-1];

  k = 3
  for curRow = 1:rows(A1)
    adjunct = calcMatrixAdjunct(A1, curRow, k);
    int32(adjunct)
  endfor

  printf("\n-------------------------\n")

  k = 4
  for curRow = 1:rows(A2)
    adjunct = calcMatrixAdjunct(A2, curRow, k);
    int32(adjunct)
  endfor

endfunction

matricas29()
