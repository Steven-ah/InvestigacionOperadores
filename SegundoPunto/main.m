A = [7 12;5 20];
nRows = size(A);
nCols = nRows(2);
nRows = nRows(1);
cont=1;
resultado=zeros(nCols+nRows);

for i=1:nCols-1
   for j=1:nRows
      if j==nRows
          aux=-1;
      else
          aux=1;
      end 
      resultado(j+(1*aux),cont)=abs(A(j,i) - A(j+(1*aux),i)); %%%% Debe de tener bifurcacion
      resultado(cont,j+(1*aux))=resultado(j+(1*aux),cont);
      resultado(cont,j+nCols)=abs(A(j,i) - A(j,i+1)); %%% Se puede mantener
      resultado(j+nCols,cont)=resultado(cont,j+nCols);
      resultado(cont,j+nCols+(1*aux))=abs(A(j,i) - A(j+(1*aux),i+1)); %% debe de tener bifurcacion.
      resultado(j+nCols+(1*aux),cont)=resultado(cont,j+nCols+(1*aux));
      cont=cont+1;
   end
end