function [pivot] = hasPivot(row)
    row = row(1:(end-1));
    noZero = find(row, 1);
    if isempty(noZero)
        pivot = false;
    else
        pivot = true;
    end
end