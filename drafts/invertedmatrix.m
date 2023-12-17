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


function retval = getAdjunctMatrix(matrix)
  rows = rows(matrix);
  columns = columns(matrix);

  RESULT = zeros(rows, columns);
  for curRow = 1:rows
    for curCol = 1:columns
      adjunct = calcMatrixAdjunct(matrix, curRow, curCol);
      RESULT(curRow, curCol) = adjunct;
    endfor
  endfor

  retval = RESULT;

endfunction


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 Z = [2,1,0; -5,-1,1; -4,-7,-2]

AdjMatrx = getAdjunctMatrix(Z)
TransposedAdjMatrx = transpose(AdjMatrx)
InvertedZ = TransposedAdjMatrx / det(Z)

InvZ = inv(Z)

abs(InvZ-InvertedZ)<eps(InvertedZ)*4
InvZ == InvertedZ

