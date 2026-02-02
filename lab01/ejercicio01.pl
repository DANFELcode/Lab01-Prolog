%Ejercicio 1

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

%¿Existe un vuelo directo de Bogotá a Medellín?.
% ?- vuelo(bogota, medellin). si existe

%¿Qué destinos se pueden alcanzar directamente desde Bogotá?.
% ?- vuelo(bogota, X). medellin, bogota, pasto

%¿Desde que destinos se puede alcanzar Medellin?	
% ?- vuelo(X, medellin). desde Bogota

%¿Hay alguna forma de llegar directamente a cali?
% ?- vuelo(X, cali). No la hay