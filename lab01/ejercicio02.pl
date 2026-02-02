%Ejercicio 2

% Hechos: relación entre ciudades
ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

% Hechos: vuelos directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

%Determine si dos ciudades están conectadas mediante una escala.
escala(X,Y):-vuelo(X,Z),vuelo(Z,Y).
%escala(bogota, barranquilla). retorna true

%Encuentra todas las ciudades a las que se puede llegar desde Cali con una escala.
% ?- escala(cali,X). se pude llegar a medellin, cartagena, pasto

%Define una regla viaje que sea cierta si existe un vuelo directo o con una escala entre dos ciudades (no usar recursion).
viaje(X,Y):-escala(X,Y) ; vuelo(X,Y).
% ?-viaje(bogota,pasto).

%Define una regla destinos que devuelva todos los destinos alcanzables directamente desde una ciudad.
destinos(X,Y) :- viaje(X, Y).


% ?- vuelo(X, cali). No la hay