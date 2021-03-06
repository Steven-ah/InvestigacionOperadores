%%%%%% Definición de la matriz y variables %%%%%%%%%%%

A = [2 3 -1 4;1 2 3 7;4 7 5 2];
%A = [2 3 -1 4;1 2 3 7;4 7 5 18];
%A = [2 1 4; 3 1 5; 5 1 7];
B = rref(A);
nRows = size(B);
nCols = nRows(2);
nRows = nRows(1);
pivots = zeros(nCols-1,1);
contradictions = zeros(nCols-1,1);

%%
%%%%%%%% Se recorre la matriz columna a columna %%%%%%%%%%%%%%%%%
for i=1:nCols-1
    pivots(i) = hasPivot(B(i,:)); %%% Verificamos pivotes y almacenamos el resultado para evaluar luego
    if ~pivots(i)
        contradictions(i) = detectContradictions(B(i,:)); %%% Verificamos contradicciones 
    end
end
fVar = find(~pivots); %%% Obtenemos posiciones de las variables libres
contradiction = find(contradictions); %%% Obtenemos posiciones de las contradicciones
%%
%%%%%%%%%% Verificación del tipo de resultados %%%%%%%%%%%%%%%%%%%

disp("Matriz original aumentada")
disp(A);
disp("Matriz escalonada reducida")
disp(B);

if ~isempty(contradiction) %%% Verificamos si tiene alguna contradiccion
   disp("La matriz no tiene solución debido a que tiene al menos una contradicción");
elseif ~isempty(fVar) %%% Verificamos si hay al menos una variable libre.
   disp("La matriz tiene infinitas soluciones ya que tiene al menos una variable libre");
else
    disp("La matriz tiene única solución ya que no tiene ni contradicciones ni variables libres");
end