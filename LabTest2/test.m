function [ test ] = test(x)
%Tests lab 2 practise q2 with f(x),g(x) or h(x)
fh= str2func('x')

fh(1)
fh(1,100)
fh([1 2],100)
fh([1 2;2 0],100)

test=1

end

%how to convert input into string?
