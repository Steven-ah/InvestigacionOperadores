%%%%%% Ordenar lista de vectores de valores finales en base a una norma.
function [Vsort, Anorm] = sortV(VA, normP)
    Vsort = zeros(size(VA));
    for i = 1:length(VA)-1
        Anorm(i) = norm(VA(i+1) - VA(i), normP);
    end
    j = 1;
    AnormAux = Anorm;
    for i = 1:length(AnormAux)
        index = find(AnormAux==max(AnormAux));
        if length(index) > 1
            index = index(1);
        end
        Vsort(:,j) = VA(:,index);
        AnormAux(index) = [];
        VA(:,index) = [];
        j = j + 1;
        i = 1;
    end
end