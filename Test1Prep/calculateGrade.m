function [ g ] = calculateGrade(M);
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
avg= mean(M)
if avg >= 80
    g= 'HD'
elseif avg >= 70
    g= 'D'
elseif avg >= 60
    g= 'CR'
elseif avg >= 50
    g= 'P'
elseif avg >= 45
    g= 'N+'
elseif avg >= 0
    g= 'N'
end

%use and for multiple relational operators

