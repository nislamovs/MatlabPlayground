%Uzdevumu krajums augstaka matematika
%Matricu algebra - parbaudit vai eksiste matricu reizinajums
%Uzdevums No. 55
1;

function evaluate(cond, varargin)

    if (length(varargin) >= 1) A = varargin{1}; endif
    if (length(varargin) >= 2) B = varargin{2}; endif
    if (length(varargin) >= 3) C = varargin{3}; endif
    if (length(varargin) >= 4) D = varargin{4}; endif

    LogicalStr = {'false', 'true'};
    cond = sprintf("%s%s", cond, ";");
    status = 0;

    try
        eval(cond);
        status = 1;
    catch e
%        fprintf(1,'There was an error! The message was:\n%s',e.message);
%        fprintf("\n");
        status = 0;
    end
    printf("%s   -   %s\n", cond, LogicalStr{status+1})

endfunction


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


A = [2, -1; 3, 4];
B = [-1,5,4; 3,2,0];
C = [-3,2; 5,6; 7,8];
D = [1;3;5;7];


evaluate('A*B', A, B, C, D);
evaluate('B*A', A, B, C, D);
evaluate('A*C', A, B, C, D);
evaluate('C*A', A, B, C, D);

evaluate('B*C', A, B, C, D);
evaluate('C*B', A, B, C, D);
evaluate('D*A', A, B, C, D);
evaluate('A*D', A, B, C, D);

evaluate('A*B*C', A, B, C, D);
evaluate('B*A*D', A, B, C, D);
evaluate('C*B*A', A, B, C, D);
evaluate('A*C*B', A, B, C, D);
evaluate('B*C*A', A, B, C, D);


