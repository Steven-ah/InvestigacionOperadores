function [contradiction] = detectContradictions(row)
    lastElement = row(end);
    row = row(1:(end-1));
    contradiction = isempty(find(row,1)) && lastElement ~= 0;
end