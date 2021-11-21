%%%% Funcion para obtener AL
function [AL] = obtainProbabilitiMlimit(A)
    [C,D] = eig(A);
    D(D<1)=0;
    AL = C*D*inv(C)
end