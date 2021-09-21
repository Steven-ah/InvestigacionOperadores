function [contradiction] = detectContradictions(row)
    contradiction = row(:,length(row)) ~= 0 && row(:,length(row)-1) == 0;
end