function [] = test2()
    x = test("yobana", 12, 12)

    fprintf('test 2 internal msg\n')

    fprintf('test 2 operation [%d]\n', x+6)
end