function retval = test(msg, arg1, arg2)
    fprintf('Hello\n')
    fprintf('youuu\n')

    if (exist("msg") == 1)
        fprintf('Message is [%s]\n', msg)
    endif

    if (exist("arg1") == 1 && exist("arg2") == 1)
        result = arg1+arg2;
        fprintf('Result is [%d]\n', result)
        retval = result
    endif




    X=randi([1,3])
    switch (X)
      case 1
        fprintf('Result is one [%d]\n', X)
      case 2
       fprintf('Result is two [%d]\n', X)
      otherwise
        fprintf('Result is otherwise [%d]\n', X)
    endswitch
end