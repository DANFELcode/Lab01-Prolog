 % Verificar si X es miembro de una lista
miembro(X, [X|_]).      
miembro(X, [_|T]) :- miembro(X, T).

% Calcular la longitud de una lista
longitud([], 0).              
longitud([_|T], N) :- longitud(T, N1), N is N1 + 1.

%concatenar dos listas
concatena([], L, L).           
concatena([H|T], L2, [H|R]) :- concatena(T, L2, R).       

%Obtener los N elementos de la serie fibonacci
fib(0, 0).
fib(1, 1).
fib(N, F) :- N > 1, N1 is N-1, N2 is N-2, fib(N1,F1), fib(N2,F2), F is F1+F2.
fibonacci_lista(0, []).
fibonacci_lista(N, [F|R]) :-
    N > 0,
    N1 is N-1,
    fib(N1, F),
    fibonacci_lista(N1, R).

%Determinar el reverso de una lista
reverso([], []).
reverso([H|T], R) :- reverso(T, RT), append(RT, [H], R).

%Determinar si una lista es palindroma
palindromo(L) :- reverso(L, L). 


