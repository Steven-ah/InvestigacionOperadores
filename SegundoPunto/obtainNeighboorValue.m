function obtainNeighboorValue(a,b,c,d)
      global adM;
      global A;
      global index;
      adM(index(a,b), index(c,d))=abs(A(a,b) - A(c,d));
      adM(index(c,d), index(a,b))=adM(index(a,b), index(c,d));
end