function [contradiction] = detectContradictions(MeR)
    lastRow = size(MeR);
    lastRow = MeR(lastRow(1), :);
    contradiction = lastRow(:,length(lastRow)-1) ~= 0 & lastRow(:,length(lastRow)) == 0;
end