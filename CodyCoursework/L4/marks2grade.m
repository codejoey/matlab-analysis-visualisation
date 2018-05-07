function [ grade ] = marks2grade(marks)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
avg= mean(marks)
if avg >100 || avg <0
    grade= 'ERR'
elseif avg >= 80
    grade= 'HD'
elseif avg >= 70
    grade= 'D'
elseif avg >= 60
    grade= 'CR'
elseif avg >= 50
    grade= 'P'
elseif avg >= 45
    grade= 'N+'
elseif avg >= 0
    grade= 'N'
% elseif avg <0
%     grade= 'ERR'
end

%use && for multiple relational operators

