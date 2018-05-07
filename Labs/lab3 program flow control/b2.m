function oddsum = b(x,y)
%b=3:8
%input: b=[x,y]
%output: sum of odd elements in b
%sub-outputs required: identify odd elements
%need accumulator to sum odd elements identified

b= x:y
oddsum=0;
%ii= numel(b) %counts number of elements in b

for b= x:y
   if rem(b,2)
       oddsum= oddsum+b;
   end
end