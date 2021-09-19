function [pivot] = hasPivot(col)
    noZero = find(col);
    if ~isempty(noZero) && length(noZero) > 1
        pivot = false;
    else
        pivot = true;
    end
end