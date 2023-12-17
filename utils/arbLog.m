function logarithm = arbLog (base, antiLog)
    numerator = log10(antiLog);
    denominator = log10(base);

    logarithm = numerator / denominator;
endfunction