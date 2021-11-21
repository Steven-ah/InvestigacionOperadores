%%% Solo funciona para matrices cuadradas.

function [k, V] = cadenaMarkovNorma(A, p0, normP, normV)
    k = 0;
    i = inf;
    while i > normP && k <= 10000
        i = norm(A^k*p0 - A^(k+1)*p0, normV);
        V = A^k*p0;
        k = k + 1;
    end
end