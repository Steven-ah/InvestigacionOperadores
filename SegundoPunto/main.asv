A = [7 12;5 20];
nRows = size(A);
nCols = nRows(2);
nRows = nRows(1);
cont=1;
resultado=zeros(nCols+nRows);

for i=1:nCols
   if i==nCols
        aux2=-1;
        aux3=0;
   else
        aux2=1;
        aux3=1;
   end
   for j=1:nRows
      if j==nRows
          aux=-1;
      else
          aux=1;
      end 
      resultado(cont,j+(nCols*aux3))=abs(A(j,i) - A(j,i+(1*aux2))); %%% Se puede mantener
      resultado(j+(nCols*aux3),cont)=resultado(cont,j+(nCols*aux3));
      resultado(j+(1*aux),cont)=abs(A(j,i) - A(j+(1*aux),i)); %%%% Debe de tener bifurcacion
      resultado(cont,j+(1*aux))=resultado(j+(1*aux),cont);
      resultado(cont,j+(nCols*aux3)+(1*aux))=abs(A(j,i) - A(j+(1*aux),i+(1*aux2))); %% debe de tener bifurcacion.
      resultado(j+(nCols*aux3)+(1*aux),cont)=resultado(cont,j+(nCols*aux3)+(1*aux));
      cont=cont+1;
   end
end