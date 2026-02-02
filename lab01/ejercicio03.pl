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


%parte 2
perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

%Define una regla que determine si una persona tiene un perro.
tiene_perro(X):-dueno(X,Y), perro(Y).
% Ana, Luis, Pedro tienen perro

%Define una regla que determine si una persona tiene un gato.
tiene_gato(X):-dueno(X,Y),gato(Y).
% Ana, Luis, Julio tienen gato

%Define una regla que determine si una persona tiene multiples mascotas
tiene_ave(X):-dueno(X,Y),ave(Y).
tiene_multiples_mascotas(X):-(tiene_perro(X),tiene_gato(X));(tiene_perro(X),tiene_ave(X))
    			   ;(tiene_gato(X),tiene_ave(x)).
%Ana y luis tienen multiples mascotas

%Define una regla amante_animales para identificar dueños que tienen tanto perro como gato.
amante_animales(X):-tiene_perro(X),tiene_gato(X).

%Define una regla mascota_compartida que indique si dos personas comparten mascota.
mascota_compartida(X,Y):-dueno(X,Z),dueno(Y,Z).

%Define una regla tipo_mascota que asocie una persona con el tipo de mascota que tiene (perro, gato, ave, etc.).
tiene_animal(X):-tiene_perro(X);tiene_gato(X);tiene_ave(X).
tipo_mascota(X):-tiene_animal(X).

	






