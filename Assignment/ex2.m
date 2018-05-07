sm = []; % initialize an empty accumulator
for a = 1 : 30
if ~rem(a,3) && rem(a,7)
sm = [sm, a]
end
end