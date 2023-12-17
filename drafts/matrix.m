%Transponated matrix

A = [1,0,6; 4,-2,0; -5,7,3];
A+transpose(A)

%Inversed matrix

C = [3,2; 4,6];
Cinv=inv(C)

M = round(Cinv*100)/100;
C = num2cell(Cinv);
fun = @(x) sprintf('%0.2f', x);
V = cellfun(fun, C, 'UniformOutput',0)

%rotate matrix 90degree

A = [1,0,6; 4,-2,0; -5,7,3];
Arot=rot90(A)

%matrix of ones

X = ones(4)

%matrix of zeros

X = zeros(4)

%matrix rank

A = [1,0,6; 4,-2,0; -5,7,3];
rank(A)

%diagonal matrix

A=eye(5)

A2=rot90(A)

B = tril(magic(3))
B(logical(eye(size(B,1)))) = 99


% random matrix

Z=magic(7)

% matrix of number

G = ones(10);
G(:) = 99

% Matrix divide by number

Y = ones(10);
Y(:) = 99
Y/3

% Matrix square root

Y = ones(10);
Y(:) = 36
sqrt(Y)

% Matrix in power

Y = ones(10);
Y(:) = 9
Y.^2

%Sinus of matrix of values

COORD=[0, pi/2; 3*pi/2, 2*pi]
int32(sin(COORD))


%Logarithm of matrix

ANTILOG_MATRIX=[8, 16; 32, 64]
log2(ANTILOG_MATRIX)


source ("../utils/arbLog.m")
ANTILOG_MATRIX=[5*5, 5*5*5*5; 5*5*5*5*5, 0.2]
arbLog(5, ANTILOG_MATRIX(2,2))