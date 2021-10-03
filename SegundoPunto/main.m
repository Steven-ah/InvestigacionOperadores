global A
A = [1 4 7;2 5 8;3 6 9];
nRows = size(A);
nCols = nRows(2);
nRows = nRows(1);
global index;
index = reshape(find(A==A),nCols,nRows);
global adM;
adM=zeros(nCols*nCols);

for i=1:nCols
   if i==nCols
        aux2=-1;
   else
        aux2=1;
   end
   for j=1:nRows
      if j==nRows
          aux=-1;
      else
          aux=1;
      end
        obtainNeighboorValue(j,i,j,i+(1*aux2)); %%% Vecino de la derecha o izquierda
        obtainNeighboorValue(j,i,j+(1*aux),i); %%% Vecino inferior o superior
        if j > 1 && j < nRows
         obtainNeighboorValue(j,i,j-1,i+(1*aux2)); %%% Vecino de la diagonal superior
        end
        obtainNeighboorValue(j,i,j+(1*aux),i+(1*aux2)); %%% Vecino de la diagonal inferior
   end
end