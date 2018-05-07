function student2 = average(student)
% Lab Test 1 Tuesday  
for ii=1:length(student)
    student(ii).ave = mean(student(ii).marks);
end
student2 = student;
end

