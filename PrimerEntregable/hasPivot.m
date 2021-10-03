function [pivot] = hasPivot(col)
    col = col(1:(end-1));
    noZero = find(col, 1);
    if isempty(noZero)
        pivot = false;
    else
        pivot = true;
    end
end