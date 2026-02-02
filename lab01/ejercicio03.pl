% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).

%Define una regla reprueba, que sea cierta si un estudiante tiene menor a 3.0.
% Regla: un estudiante reprueba si su nota es menor a 3.0
reprueba(X) :- nota(X,Y),Y< 3.0.

%Define una regla aprueba, que sea cierta si un estudiante tiene nota mayor o igual a 3.0.
aprueba(X) :- nota(X,Y),Y>=3.0.

%Define una regla rango, donde rango(X, Min, Max) sea cierto si la nota de un estudiante X está entre Min y Max.
rango(X, Min, Max):- nota(X, Y),Min =< Y, Y =< Max.

%Define una regla clasificacion que asigne una categoría a cada estudiante según la nota:
clasificacion(X,reprobado):- rango(X, 0.0, 2.9).
clasificacion(X,aprobado):- rango(X, 3.0, 3.9).
clasificacion(X,notable):- rango(X, 4.0, 4.4).
clasificacion(X,excelente):- rango(X, 4.5, 5.0).

%Define la regla distancia((X1, Y1), (X2, Y2), D), que calcule la distantia euclidiana entre dos puntos
distancia((X1, Y1), (X2, Y2), D) :- D is sqrt((X2-X1)**2 + (Y2-Y1)**2).

% Caso base: lista vacía o con un solo punto -> distancia 0
distancia_total([], 0).
distancia_total([_], 0).
distancia_total([P1, P2 | Resto], Total) :- distancia(P1,P2) + distancia(PA, distancia_total([



