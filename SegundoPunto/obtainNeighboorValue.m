function obtainNeighboorValue(a,b,c,d)
      global adM;
      global A;
      indexA=find(A==A(a,b));
      indexB=find(A==A(c,d));
      adM(indexA, indexB)=abs(A(a,b) - A(c,d));
      adM(indexB, indexA)=adM(indexA, indexB);
end