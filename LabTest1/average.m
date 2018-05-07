function student2 = average(student)
%Joey Koh En Hai, 21506379

% student = table(categorical({'Allan';'Alex'}),({'Norris';'Collie'}),...
%     [2111111;2222222],[5,10,20,30;5,10,25,60],...
%     'VariableNames',{'first_name' 'last_name' 'student_ID' 'marks'})
% S= table2struct(student, 'ToScalar', true)

% student.first_name = {'Allan';'Alex'};
% student.last_name = {'Norris';'Collie'};
% student.student_ID = [21111111;22222222];
% student.marks = [10,20,30;10,25,60];

student(:).ave = mean([student(:).marks]);
struct2table(student2)

%T=struct2table(student,'AsArray',true)

student2= student;
struct2table(student2,'AsArray',true)
end

